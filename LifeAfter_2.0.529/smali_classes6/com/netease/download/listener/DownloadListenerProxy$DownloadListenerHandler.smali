.class public Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;
.super Landroid/os/Handler;
.source "DownloadListenerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/listener/DownloadListenerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadListenerHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InnerDownloadHandler"


# instance fields
.field data:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/netease/download/listener/DownloadListenerProxy$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private isFile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "__DOWNLOAD_END__"

    .line 469
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__DOWNLOAD_START__"

    .line 470
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__DOWNLOAD_NETWORK_LOST__"

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__DOWNLOAD_DNS_RESOLVED__"

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__DOWNLOAD_CONFIG__"

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__DOWNLOAD_PARAM_ERROR__"

    .line 474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__DOWNLOAD_STORAGE_ERROR__"

    .line 475
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__DOWNLOAD_QUEUE_CLEAR__"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public declared-synchronized addHasDownloadMag(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    monitor-enter p0

    .line 485
    :try_start_0
    sget-wide p3, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    add-long/2addr p3, p1

    sput-wide p3, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .locals 1

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "\u914d\u7f6e\u6587\u4ef6\u4e0b\u8f7d\u9519\u8bef"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u65e0\u6548\u7684\u57df\u540d\uff0c\u65e0\u6cd5\u89e3\u6790"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u65e0\u6548\u7684\u4f20\u5165\u53c2\u6570"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u8bfb\u53d6\u5185\u5bb9\u8d85\u65f6"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u4e0b\u8f7d\u88ab\u53d6\u6d88"

    goto :goto_0

    :pswitch_6
    const-string v0, "out of memory"

    goto :goto_0

    :pswitch_7
    const-string v0, "\u8bbe\u5907\u7a7a\u95f4\u4e0d\u8db3"

    goto :goto_0

    :pswitch_8
    const-string v0, "\u5199\u5165\u6587\u4ef6\u5931\u8d25"

    goto :goto_0

    :pswitch_9
    const-string v0, "MD5\u9a8c\u8bc1\u5931\u8d25"

    goto :goto_0

    :pswitch_a
    const-string v0, "\u5927\u5c0f\u9a8c\u8bc1\u5931\u8d25"

    goto :goto_0

    :pswitch_b
    const-string v0, "\u8fde\u63a5\u9519\u8bef"

    goto :goto_0

    :pswitch_c
    const-string v0, "\u4e0b\u8f7d\u6210\u529f"

    :goto_0
    :pswitch_d
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 493
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$700()Lcom/netease/download/listener/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 495
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string p1, "InnerDownloadHandler"

    const-string v0, "not exist this type of msg!"

    .line 507
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_0
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$700()Lcom/netease/download/listener/DownloadListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-interface {v0, p1}, Lcom/netease/download/listener/DownloadListener;->onFinish(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 498
    :cond_1
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$700()Lcom/netease/download/listener/DownloadListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-interface {v0, p1}, Lcom/netease/download/listener/DownloadListener;->onProgress(Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    const-wide/16 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 262
    invoke-virtual/range {v0 .. v12}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p7

    move-object/from16 v0, p9

    move-wide/from16 v4, p11

    .line 266
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    .line 269
    :try_start_0
    sget-wide v11, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    .line 271
    sget-wide v13, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    cmp-long v15, v9, v13

    if-eqz v15, :cond_0

    sget-wide v13, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J

    cmp-long v15, v9, v13

    if-eqz v15, :cond_0

    .line 273
    sget-wide v11, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    long-to-double v11, v11

    sget-wide v13, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    long-to-double v13, v13

    sget-wide v9, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v9, v9

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-long v11, v11

    :try_start_1
    const-string v9, "InnerDownloadHandler"

    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mTotalSize="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v13, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", mHasDownloadSize="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v13, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", mMergeTotalSize="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v13, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", ((float)mHasDownloadSize/mMergeTotalSize)="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v13, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    long-to-float v13, v13

    sget-wide v14, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J

    long-to-float v14, v14

    div-float/2addr v13, v14

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", bytesValue="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v9, "code"

    .line 277
    invoke-virtual {v6, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "finished"

    const/4 v10, 0x1

    .line 278
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v9, "size"

    .line 279
    sget-wide v13, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    invoke-virtual {v6, v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    const-string v9, "freespace"

    .line 282
    invoke-virtual {v6, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 285
    :cond_1
    sget-wide v4, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    cmp-long v9, v11, v4

    if-lez v9, :cond_2

    .line 286
    sget-wide v11, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    :cond_2
    const-string v4, "__DOWNLOAD_END__"

    .line 289
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "bytes"

    .line 291
    invoke-virtual {v6, v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const-string v4, "bytes"

    .line 294
    invoke-virtual {v6, v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_0
    const-string v4, "filename"

    move-object/from16 v5, p6

    .line 298
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "filepath"

    .line 299
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v4, 0xc

    if-eqz v2, :cond_4

    const-string v5, "error"

    .line 301
    invoke-virtual/range {p0 .. p1}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$408()I

    if-ne v4, v2, :cond_4

    .line 305
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$508()I

    :cond_4
    const-string v5, "sessionid"

    .line 308
    invoke-virtual {v6, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v0, "downloadid"

    .line 313
    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    const-string v5, "downloadid"

    .line 316
    invoke-virtual {v6, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v0, "orbitid"

    move-object/from16 v5, p10

    .line 319
    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v2, :cond_6

    const-string v0, "filebytes"

    move-object/from16 v5, p8

    .line 322
    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v0, "InnerDownloadHandler"

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadListenerCore [sendFinishMsg] jsonObject="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "InnerDownloadHandler"

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadListenerCore [sendFinishMsg] filePath="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFinishFilePathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFinishFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 330
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFinishFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_7
    invoke-direct {v1, v3}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 335
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$600()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    :try_start_2
    sget v0, Lcom/netease/download/listener/DownloadListenerProxy;->mHasFinishFileCount:I

    add-int/2addr v0, v10

    sput v0, Lcom/netease/download/listener/DownloadListenerProxy;->mHasFinishFileCount:I

    .line 339
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 340
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v10

    .line 342
    sget-object v9, Lcom/netease/download/listener/DownloadListenerProxy;->mFileMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 345
    :cond_8
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFileMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_9

    .line 350
    :try_start_3
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileSuccessCount()V

    goto :goto_3

    .line 353
    :cond_9
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileFailCount()V

    if-eq v4, v2, :cond_a

    .line 356
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFailCodeMap(I)V

    goto :goto_3

    .line 359
    :cond_a
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFailCancelCodeCount()V

    :goto_3
    const/4 v0, 0x2

    .line 369
    iget-object v4, v1, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v4}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 347
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_b
    :goto_4
    const-string v0, "InnerDownloadHandler"

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadListenerCore [sendFinishMsg] mTotalFileCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mFinishFileCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/netease/download/listener/DownloadListenerProxy;->mHasFinishFileCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    const/4 v0, 0x4

    .line 379
    invoke-virtual {v1, v0, v6}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "InnerDownloadHandler"

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadListenerCore [sendFinishMsg] pFinishCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", filePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "__DOWNLOAD_PARAM_ERROR__"

    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x9

    if-eq v0, v2, :cond_c

    const-string v0, "__DOWNLOAD_STORAGE_ERROR__"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "__DOWNLOAD_NETWORK_LOST__"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 383
    :cond_c
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/netease/download/downloader/TaskHandle;->setTimeToEndTask(J)V

    .line 385
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/netease/download/reporter/ReportProxy;->setmReportCallBack(Lcom/netease/download/reporter/ReportCallBack;)V

    .line 387
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isAutoFree()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "InnerDownloadHandler"

    const-string v2, "DownloadAllProxy [start] freeThreadPool"

    .line 388
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/netease/download/downloadpart/DownloadAllProxy;->getInstances()Lcom/netease/download/downloadpart/DownloadAllProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloadpart/DownloadAllProxy;->stop()V

    .line 390
    invoke-static {}, Lcom/netease/download/taskManager/TaskExecutor;->getInstance()Lcom/netease/download/taskManager/TaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/taskManager/TaskExecutor;->closeFixedThreadPool()V

    .line 391
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getInstance()Lcom/netease/download/handler/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/handler/Dispatcher;->close()V

    .line 394
    :cond_d
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->unregisterReceiver()V

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getTimeToStartTask()J

    move-result-wide v9

    sub-long/2addr v4, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-lez v0, :cond_e

    .line 399
    sget-wide v6, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    div-long v7, v6, v4

    :cond_e
    const-string v0, "InnerDownloadHandler"

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ORBIT] Finish Count="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Bytes="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " Success="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$400()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " DownBytes="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " DownCost="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " DownSpeed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "InnerDownloadHandler"

    const-string v2, "[ORBIT] Log upload=true"

    .line 402
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/netease/download/downloader/TaskHandle;->setTimeToEndTask(J)V

    .line 405
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->showTime()V

    .line 407
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->reset()V

    .line 408
    invoke-static {}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->getInstance()Lcom/netease/download/downloader/DownloadParamsQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->dispatch()V

    :cond_f
    const-string v0, "InnerDownloadHandler"

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadListenerCore [sendFinishMsg] mHasFinishFileCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/netease/download/listener/DownloadListenerProxy;->mHasFinishFileCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTotalFileCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isFile(filePath)="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->isFile(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget v0, Lcom/netease/download/listener/DownloadListenerProxy;->mHasFinishFileCount:I

    sget v2, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    if-ne v0, v2, :cond_10

    invoke-direct {v1, v3}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "InnerDownloadHandler"

    const-string v2, "DownloadListenerCore [sendFinishMsg] mIsStart reset"

    .line 415
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 418
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netease/download/downloader/TaskHandle;->setTimeToEndTask(J)V

    .line 420
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    new-instance v2, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler$1;

    invoke-direct {v2, v1}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler$1;-><init>(Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;)V

    invoke-virtual {v0, v2}, Lcom/netease/download/reporter/ReportProxy;->setmReportCallBack(Lcom/netease/download/reporter/ReportCallBack;)V

    const-string v0, "InnerDownloadHandler"

    const-string v2, "DownloadAllProxy [start] finish, close close"

    .line 461
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/netease/download/reporter/ReportProxy;->close(J)V

    :cond_10
    return-void
.end method

.method public sendFinishMsgWithOtherSatus(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    .line 233
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "finished"

    const/4 v2, 0x1

    .line 234
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "size"

    .line 235
    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    cmp-long v1, p4, p2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, p4

    :goto_0
    const-string p4, "bytes"

    .line 241
    invoke-virtual {v0, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "filename"

    .line 242
    invoke-virtual {v0, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "filepath"

    .line 243
    invoke-virtual {v0, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sessionid"

    .line 244
    invoke-virtual {v0, p2, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "downloadid"

    .line 245
    invoke-virtual {v0, p2, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "orbitid"

    .line 246
    invoke-virtual {v0, p2, p11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_1

    const-string p2, "filebytes"

    .line 249
    invoke-virtual {v0, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p2, "error"

    .line 252
    invoke-virtual {p0, p1}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->getErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x4

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 172
    :try_start_0
    sget-wide p1, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    sget-wide v0, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 174
    sget-wide p1, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    add-long/2addr p1, p3

    sget-wide v0, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 175
    sget-wide p1, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J

    sput-wide p1, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    goto :goto_0

    .line 178
    :cond_0
    sget-wide p1, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    add-long/2addr p1, p3

    sput-wide p1, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    .line 182
    :cond_1
    :goto_0
    sget-wide p1, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    .line 184
    sget-wide p3, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p3

    if-eqz v2, :cond_2

    sget-wide p3, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J

    cmp-long v2, v0, p3

    if-eqz v2, :cond_2

    .line 185
    sget-wide p1, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    long-to-double p1, p1

    sget-wide p3, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    long-to-double p3, p3

    sget-wide v2, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v2, v2

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    double-to-long p1, p1

    .line 188
    :cond_2
    :try_start_1
    sget-wide p3, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    cmp-long v2, p1, p3

    if-lez v2, :cond_3

    .line 189
    sget-wide p1, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    .line 192
    :cond_3
    invoke-static {p5}, Lcom/netease/download/listener/DownloadListenerProxy;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    invoke-static {p6}, Lcom/netease/download/listener/DownloadListenerProxy;->access$202(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    iget-object p3, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string p4, "size"

    sget-wide p5, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    invoke-virtual {p3, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 198
    iget-object p3, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string p4, "bytes"

    invoke-virtual {p3, p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    iget-object p3, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string p4, "filename"

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$100()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    iget-object p3, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string p4, "filepath"

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$200()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    iget-object p3, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string p4, "downloadid"

    invoke-virtual {p3, p4, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    iget-object p3, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string p4, "orbitId"

    invoke-virtual {p3, p4, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    new-instance p3, Ljava/text/DecimalFormat;

    const-string p4, "0.000"

    invoke-direct {p3, p4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string p4, "0"

    .line 207
    sget-wide p5, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    cmp-long p7, v0, p5

    if-eqz p7, :cond_4

    long-to-double p4, p1

    .line 208
    sget-wide p6, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-double p6, p6

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p6, p7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p4, p6

    .line 209
    :try_start_3
    invoke-virtual {p3, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p4

    .line 212
    :cond_4
    iget-object p3, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string p5, "progress"

    invoke-virtual {p3, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :catch_0
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 220
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$300()J

    move-result-wide p5

    sub-long p5, p3, p5

    .line 221
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p7

    invoke-virtual {p7}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p7

    invoke-virtual {p7}, Lcom/netease/download/downloader/TaskHandle;->getCallBackInterval()J

    move-result-wide p7

    cmp-long v0, p5, p7

    if-gtz v0, :cond_5

    sget-wide p5, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    cmp-long p7, p1, p5

    if-nez p7, :cond_6

    .line 222
    :cond_5
    invoke-static {p3, p4}, Lcom/netease/download/listener/DownloadListenerProxy;->access$302(J)J

    const/4 p1, 0x2

    .line 223
    iget-object p2, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
