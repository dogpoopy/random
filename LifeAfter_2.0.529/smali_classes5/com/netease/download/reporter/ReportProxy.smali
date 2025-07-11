.class public Lcom/netease/download/reporter/ReportProxy;
.super Ljava/lang/Object;
.source "ReportProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportProxy"

.field private static sReportProxy:Lcom/netease/download/reporter/ReportProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasInit:Z

.field private mReportCallBack:Lcom/netease/download/reporter/ReportCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/netease/download/reporter/ReportProxy;->mHasInit:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/netease/download/reporter/ReportProxy;->mReportCallBack:Lcom/netease/download/reporter/ReportCallBack;

    .line 49
    iput-object v0, p0, Lcom/netease/download/reporter/ReportProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/netease/download/reporter/ReportProxy;
    .locals 1

    .line 42
    sget-object v0, Lcom/netease/download/reporter/ReportProxy;->sReportProxy:Lcom/netease/download/reporter/ReportProxy;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/netease/download/reporter/ReportProxy;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReportProxy;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReportProxy;->sReportProxy:Lcom/netease/download/reporter/ReportProxy;

    .line 46
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReportProxy;->sReportProxy:Lcom/netease/download/reporter/ReportProxy;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportFile;->clean()V

    return-void
.end method

.method public close(J)V
    .locals 1

    .line 83
    invoke-static {}, Lcom/netease/download/reporter/ReporetCore;->getInstance()Lcom/netease/download/reporter/ReporetCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/download/reporter/ReporetCore;->close(J)V

    return-void
.end method

.method public getmReportCallBack()Lcom/netease/download/reporter/ReportCallBack;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netease/download/reporter/ReportProxy;->mReportCallBack:Lcom/netease/download/reporter/ReportCallBack;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ReportProxy"

    const-string v1, "ReportProxy [init] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u65e5\u5fd7\u6a21\u5757\u4ee3\u7406\u7c7b\u521d\u59cb\u5316"

    .line 60
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/netease/download/reporter/ReportProxy;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/download/reporter/ReportProxy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/netease/download/reporter/ReportProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReportProxy$1;-><init>(Lcom/netease/download/reporter/ReportProxy;)V

    invoke-virtual {p1, v0, v1}, Lcom/netease/download/reporter/ReportFile;->init(Landroid/content/Context;Lcom/netease/download/reporter/ReportFile$FileCallBack;)V

    .line 74
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/reporter/ReportFile;->start()V

    .line 75
    invoke-static {}, Lcom/netease/download/reporter/ReporetCore;->getInstance()Lcom/netease/download/reporter/ReporetCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/reporter/ReporetCore;->init()V

    return-void
.end method

.method public report(Landroid/content/Context;I)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReportProxy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/download/reporter/ReportProxy$2;-><init>(Lcom/netease/download/reporter/ReportProxy;Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "download_report"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public report(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .line 185
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ReportProxy"

    if-eqz p1, :cond_0

    const-string v0, "ReportProxy [report] \u91c7\u7528\u914d\u7f6e\u6587\u4ef6 ip"

    .line 188
    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/netease/download/config/ConfigParams;->getReportUrl()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/netease/download/config/ConfigParams;->getReportIpArray()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 193
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "https://sigma-orbit-impression.proxima.nie.easebar.com/sdk"

    const-string v4, "https://sigma-orbit-impression.proxima.nie.netease.com/sdk"

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-gtz v2, :cond_6

    :cond_1
    const-string p1, "ReportProxy [report] \u91c7\u7528hardcode ip"

    .line 194
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReportProxy [report] \u6d77\u5916="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1"

    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    :goto_1
    move-object v0, v3

    goto :goto_3

    :cond_2
    const-string v2, "2"

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "0"

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_CHINA:[Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v2, "-1"

    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_GLOBAL:[Ljava/lang/String;

    :cond_5
    :goto_2
    move-object v0, v4

    .line 217
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportProxy [report] url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/netease/download/reporter/ReportUrlController;->init(Ljava/lang/String;[Ljava/lang/String;)V

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReportProxy [report] ReportUrlController="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReportProxy [report] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u4fe1\u606f---\u4e0a\u4f20\u65e5\u5fd7\u5185\u5bb9="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/netease/download/reporter/ReportNet;->getInstances()Lcom/netease/download/reporter/ReportNet;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/netease/download/reporter/ReportNet;->report(Ljava/lang/String;I)V

    goto :goto_4

    :cond_7
    const-string p1, "ReportProxy [report] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u4fe1\u606f\uff0c\u4e0d\u9700\u8981\u4e0a\u4f20"

    .line 228
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public reportInfo(Landroid/content/Context;II)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "ReportProxy"

    if-ne p2, v0, :cond_1

    const-string p2, "ReportProxy [report] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u57fa\u7840\u4fe1\u606f"

    .line 236
    invoke-static {v1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/netease/download/reporter/ReportInfo;->getInfo(Z)Ljava/lang/String;

    move-result-object p2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportProxy [report] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u57fa\u7840\u4fe1\u606f = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandle;->getStatus()I

    move-result v1

    const/16 v2, 0xe

    if-eq v2, v1, :cond_0

    const-string v1, "status"

    const/4 v2, -0x1

    .line 248
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 256
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const-string p2, "ReportProxy [report] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u5168\u90e8\u4fe1\u606f"

    .line 259
    invoke-static {v1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/netease/download/reporter/ReportInfo;->getInfo(Z)Ljava/lang/String;

    move-result-object p2

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportProxy [report] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u5168\u90e8\u4fe1\u606f = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/netease/download/reporter/ReportInfo;->getInfo(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setOpen(Z)V
    .locals 1

    .line 270
    invoke-static {}, Lcom/netease/download/reporter/ReporetCore;->getInstance()Lcom/netease/download/reporter/ReporetCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/download/reporter/ReporetCore;->setOpen(Z)V

    return-void
.end method

.method public setmReportCallBack(Lcom/netease/download/reporter/ReportCallBack;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netease/download/reporter/ReportProxy;->mReportCallBack:Lcom/netease/download/reporter/ReportCallBack;

    return-void
.end method
