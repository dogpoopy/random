.class Lcom/netease/download/downloader/DownloadProxy$1;
.super Ljava/lang/Object;
.source "DownloadProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/downloader/DownloadProxy;->asyncDownloadArray(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/download/listener/DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/downloader/DownloadProxy;

.field final synthetic val$pContext:Landroid/content/Context;

.field final synthetic val$pListener:Lcom/netease/download/listener/DownloadListener;

.field final synthetic val$paramsJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/download/downloader/DownloadProxy;Lorg/json/JSONObject;Landroid/content/Context;Lcom/netease/download/listener/DownloadListener;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    iput-object p2, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$paramsJson:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pListener:Lcom/netease/download/listener/DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 310
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->reset()V

    .line 311
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->start()V

    .line 312
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 314
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/download/downloader/TaskHandle;->setTimeToStartTask(J)V

    .line 316
    iget-object v1, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v1}, Lcom/netease/download/downloader/DownloadProxy;->access$000(Lcom/netease/download/downloader/DownloadProxy;)V

    .line 318
    iget-object v1, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v1}, Lcom/netease/download/downloader/DownloadProxy;->access$100(Lcom/netease/download/downloader/DownloadProxy;)V

    .line 320
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/download/downloader/TaskHandle;->setTimeToStartParseParams(J)V

    .line 321
    iget-object v1, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    iget-object v2, v0, Lcom/netease/download/downloader/DownloadProxy$1;->val$paramsJson:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcom/netease/download/downloader/DownloadProxy;->access$300(Lcom/netease/download/downloader/DownloadProxy;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/downloader/DownloadProxy;->access$202(Lcom/netease/download/downloader/DownloadProxy;Ljava/util/List;)Ljava/util/List;

    .line 323
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/download/downloader/TaskHandle;->setTimeToFinishParseParams(J)V

    const-string v1, "DownloadProxy"

    const-string v2, "DownloadParams [createParamsArray] \u4e0b\u8f7d\u524d\u671f\uff0c\u53d1\u9001\u65e5\u5fd7\uff08\u4e0a\u4e00\u6b21\u9057\u7559\u6587\u4ef6\uff09"

    .line 325
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v2

    iget-object v3, v0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;I)V

    .line 328
    iget-object v2, v0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/download/downloader/DownloadProxy;->initReportInfo(Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v2

    iget-object v3, v0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netease/download/reporter/ReportProxy;->init(Landroid/content/Context;)V

    .line 332
    sget-object v2, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 333
    iget-object v2, v0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    sput-object v2, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    .line 336
    :cond_0
    iget-object v2, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v2}, Lcom/netease/download/downloader/DownloadProxy;->access$400(Lcom/netease/download/downloader/DownloadProxy;)Lcom/netease/download/listener/DownloadListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 337
    iget-object v2, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    iget-object v3, v0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pListener:Lcom/netease/download/listener/DownloadListener;

    invoke-static {v2, v3}, Lcom/netease/download/downloader/DownloadProxy;->access$402(Lcom/netease/download/downloader/DownloadProxy;Lcom/netease/download/listener/DownloadListener;)Lcom/netease/download/listener/DownloadListener;

    .line 340
    :cond_1
    iget-object v2, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v2}, Lcom/netease/download/downloader/DownloadProxy;->access$500(Lcom/netease/download/downloader/DownloadProxy;)V

    .line 342
    iget-object v2, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v2}, Lcom/netease/download/downloader/DownloadProxy;->access$200(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v2}, Lcom/netease/download/downloader/DownloadProxy;->access$200(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    goto/16 :goto_2

    .line 368
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadProxy [asyncDownloadArray] TaskHandleOp.getInstance().getTaskHandle().getmType()="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadProxy [asyncDownloadArray] TaskHandleOp.getInstance().getTaskHandle().getNotUseCdn()="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getNotUseCdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNotUseCdn()Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "DownloadProxy [asyncDownloadArray] 111"

    .line 372
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "DownloadProxy [asyncDownloadArray] 222"

    .line 375
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_0
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "list"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "DownloadProxy [asyncDownloadArray] \u5217\u8868\u6587\u4ef6\u4e0b\u8f7d"

    .line 379
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v1}, Lcom/netease/download/downloader/DownloadProxy;->access$200(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/download/downloader/DownloadParams;

    if-eqz v1, :cond_7

    .line 383
    invoke-static {}, Lcom/netease/download/list/PatchListProxy;->getInstances()Lcom/netease/download/list/PatchListProxy;

    move-result-object v2

    sget-object v3, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/netease/download/list/PatchListProxy;->init(Landroid/content/Context;Lcom/netease/download/downloader/DownloadParams;)V

    .line 384
    invoke-static {}, Lcom/netease/download/list/PatchListProxy;->getInstances()Lcom/netease/download/list/PatchListProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/list/PatchListProxy;->start()I

    goto/16 :goto_1

    .line 387
    :cond_4
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "patch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNotUseCdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "DownloadProxy [asyncDownloadArray] patch\u6587\u4ef6\u4e0b\u8f7d"

    .line 388
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/netease/download/downloader/DownloadPreHandler;->getInstatnces()Lcom/netease/download/downloader/DownloadPreHandler;

    move-result-object v2

    sget-object v3, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadInitInfo;->getProjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netease/download/downloader/DownloadPreHandler;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/netease/download/downloader/DownloadPreHandler;->getInstatnces()Lcom/netease/download/downloader/DownloadPreHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadPreHandler;->start()I

    move-result v2

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9884\u5904\u7406\u7ed3\u679c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_5

    const-string v2, "\u5f00\u542f\u4e00\u4e2apatch\u7cfb\u5217\u4e0b\u8f7d"

    .line 395
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getInstance()Lcom/netease/download/handler/Dispatcher;

    move-result-object v1

    sget-object v2, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v3}, Lcom/netease/download/downloader/DownloadProxy;->access$200(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netease/download/handler/Dispatcher;->startSyn(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    const-string v2, "\u9884\u5904\u7406\u4e0d\u6210\u529f\uff0c\u76f4\u63a5\u4e0a\u4f20\u65e5\u5fd7\u3002"

    .line 399
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/netease/download/reporter/ReportProxy;->close(J)V

    goto :goto_1

    .line 403
    :cond_6
    invoke-static {}, Lcom/netease/download/ohter/DownloadOhterProxy;->getInstances()Lcom/netease/download/ohter/DownloadOhterProxy;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v2}, Lcom/netease/download/downloader/DownloadProxy;->access$200(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/download/ohter/DownloadOhterProxy;->init(Ljava/util/List;)V

    .line 404
    invoke-static {}, Lcom/netease/download/ohter/DownloadOhterProxy;->getInstances()Lcom/netease/download/ohter/DownloadOhterProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/ohter/DownloadOhterProxy;->start()V

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    const-string v2, "DownloadProxy [asyncDownloadArray] mParamsList params error"

    .line 343
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netease/download/reporter/ReportProxy;->setOpen(Z)V

    .line 348
    iget-object v1, v0, Lcom/netease/download/downloader/DownloadProxy$1;->val$paramsJson:Lorg/json/JSONObject;

    const-string v2, "downloadid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_9

    .line 349
    iget-object v1, v0, Lcom/netease/download/downloader/DownloadProxy$1;->val$paramsJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    move-object v1, v3

    .line 352
    :goto_3
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getStatus()I

    move-result v2

    const/16 v4, 0x9

    if-ne v4, v2, :cond_a

    .line 354
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v4

    const/16 v5, 0x9

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v14

    const-string v10, ""

    const-string v11, ""

    move-object v13, v1

    invoke-virtual/range {v4 .. v14}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const/4 v4, 0x5

    if-ne v4, v2, :cond_b

    .line 357
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v5

    const/4 v6, 0x5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getFreeSpace()J

    move-result-wide v16

    const-string v11, "__DOWNLOAD_STORAGE_ERROR__"

    const-string v12, "__DOWNLOAD_STORAGE_ERROR__"

    const-string v14, ""

    invoke-virtual/range {v5 .. v17}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_4

    .line 360
    :cond_b
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 361
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v4

    const/16 v5, 0xe

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v14

    const-string v10, "__DOWNLOAD_PARAM_ERROR__"

    const-string v11, "__DOWNLOAD_PARAM_ERROR__"

    move-object v13, v1

    invoke-virtual/range {v4 .. v14}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_4
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v14

    const-string v10, "__DOWNLOAD_END__"

    const-string v11, "__DOWNLOAD_END__"

    move-object v13, v1

    invoke-virtual/range {v4 .. v14}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
