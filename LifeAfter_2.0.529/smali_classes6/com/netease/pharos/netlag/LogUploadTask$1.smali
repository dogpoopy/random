.class Lcom/netease/pharos/netlag/LogUploadTask$1;
.super Ljava/lang/Object;
.source "LogUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/netlag/LogUploadTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/netlag/LogUploadTask;


# direct methods
.method constructor <init>(Lcom/netease/pharos/netlag/LogUploadTask;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 39
    iget-object v0, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-static {v0}, Lcom/netease/pharos/netlag/LogUploadTask;->access$000(Lcom/netease/pharos/netlag/LogUploadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "pharos"

    const-string v2, "LogUpload [init] LogThread  start success!"

    .line 40
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 47
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-static {v8}, Lcom/netease/pharos/netlag/LogUploadTask;->access$100(Lcom/netease/pharos/netlag/LogUploadTask;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-static {v8}, Lcom/netease/pharos/netlag/LogUploadTask;->access$100(Lcom/netease/pharos/netlag/LogUploadTask;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    if-eqz v8, :cond_6

    const-string v9, "finish"

    .line 49
    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez v4, :cond_1

    const/16 v4, 0x14

    .line 52
    iget-object v5, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-static {v5}, Lcom/netease/pharos/netlag/LogUploadTask;->access$100(Lcom/netease/pharos/netlag/LogUploadTask;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 54
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 58
    :cond_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-ge v6, v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LogUpload [upload]--> cache size:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-wide/16 v9, 0x14

    const/16 v4, 0x100

    .line 68
    :try_start_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "post_content"

    .line 69
    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->getInstance()Lcom/netease/pharos/netlag/NetworkCheckProxy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->isOversea()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "https://sigma-netlag-impression.proxima.nie.easebar.com/lag"

    goto :goto_1

    :cond_3
    const-string v12, "https://sigma-netlag-impression.proxima.nie.netease.com/lag"

    :goto_1
    const-string v13, "POST"

    .line 71
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-static {v12, v11, v13, v14, v2}, Lcom/netease/pharos/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 72
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LogUpload [upload]url:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LogUpload [upload]result:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ",data-->"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    iget-object v8, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-static {v8}, Lcom/netease/pharos/netlag/LogUploadTask;->access$100(Lcom/netease/pharos/netlag/LogUploadTask;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-ge v8, v4, :cond_4

    .line 79
    :goto_2
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v8

    .line 75
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LogUpload [Thread] IOException ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    :try_start_5
    iget-object v8, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-static {v8}, Lcom/netease/pharos/netlag/LogUploadTask;->access$100(Lcom/netease/pharos/netlag/LogUploadTask;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    if-ge v8, v4, :cond_4

    goto :goto_2

    :catch_1
    :cond_4
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :goto_4
    iget-object v5, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-static {v5}, Lcom/netease/pharos/netlag/LogUploadTask;->access$100(Lcom/netease/pharos/netlag/LogUploadTask;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-ge v5, v4, :cond_5

    .line 79
    :try_start_6
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 83
    :catch_2
    :cond_5
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v1

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LogUpload [Thread] InterruptedException ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-static {v1, v2}, Lcom/netease/pharos/netlag/LogUploadTask;->access$102(Lcom/netease/pharos/netlag/LogUploadTask;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;

    .line 89
    iget-object v1, p0, Lcom/netease/pharos/netlag/LogUploadTask$1;->this$0:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-static {v1}, Lcom/netease/pharos/netlag/LogUploadTask;->access$000(Lcom/netease/pharos/netlag/LogUploadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "LogUpload [init] LogThread  stopped"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
