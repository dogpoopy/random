.class public Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;
.super Lcom/netease/ntunisdk/modules/base/BaseModules;
.source "ClientLogModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$FHandler;
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$FHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/modules/base/BaseModules;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V

    .line 45
    invoke-static {}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;->getInstance()Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;->init(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/clientlog/utils/ConfigUtil;->readLibraryConfig(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->getInstance()Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->init()V

    .line 48
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ClientLogHandlerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance p2, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$1;-><init>(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->mHandler:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$FHandler;

    .line 62
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant;->SUBMIT_MODULE:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    sget-object p2, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;->MODEL_SINGLE:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    if-ne p1, p2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->flushData()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->startSubmitData(Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->stopSubmitData(Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addInfoForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 164
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 166
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sdk"

    .line 167
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "status"

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v1, "adclientlog"

    .line 169
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "platform"

    const-string v1, "ad"

    .line 170
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "timestamp"

    .line 171
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "udid"

    const-string p2, "getUDID"

    .line 172
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "transid"

    const-string p2, "getTransId"

    .line 173
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addInfoForJson Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ClientLogModule"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private closeClientLog(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    const-string v0, "ClientLogModule"

    const/4 v1, 0x0

    .line 149
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 150
    new-instance v3, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 151
    iput p1, v2, Landroid/os/Message;->what:I

    .line 152
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->mHandler:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$FHandler;

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$FHandler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "closeClientLog Success"

    .line 154
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->SUCCESS:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-direct {p0, p1, v1, p3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->synchronousCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "closeClientLog Failed"

    .line 157
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-direct {p0, p1, v1, p3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->synchronousCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p5, :cond_0

    .line 202
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string p5, "respCode"

    .line 206
    invoke-virtual {p3}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->getCode()I

    move-result v1

    invoke-virtual {v0, p5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "respMsg"

    .line 207
    invoke-virtual {p3}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    invoke-virtual {p3}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    const-string p3, "result"

    .line 209
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_1
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->context:Landroid/content/Context;

    instance-of p3, p3, Landroid/app/Activity;

    if-eqz p3, :cond_2

    .line 212
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->context:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    .line 213
    new-instance p4, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;

    invoke-direct {p4, p0, p2, p1, v0}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;-><init>(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p3, p4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 222
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extendCall Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ClientLogModule"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "deviceInfo"

    .line 186
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->registerModuleListener(Ljava/lang/String;)V

    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "source"

    .line 188
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "methodId"

    .line 189
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->callSDKOthersModules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceInfo Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClientLogModule"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private sendClientLog(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "log"

    .line 128
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->PARAM_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-direct {p0, p1, v0, p3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->synchronousCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 132
    invoke-direct {p0, p1, p3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->addInfoForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "ClientLogModule"

    const-string p2, "sendClientLog sendJson is null"

    .line 134
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-direct {p0, p1, v0, p3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->synchronousCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_1
    new-instance v3, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;

    invoke-direct {v3, p1, p2, p3, v2}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 138
    iput p1, v1, Landroid/os/Message;->what:I

    .line 139
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->mHandler:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$FHandler;

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$FHandler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->SUCCESS:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-direct {p0, p1, v0, p3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->synchronousCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 143
    :catch_0
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-direct {p0, p1, v0, p3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->synchronousCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sendExtendCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 12

    .line 292
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->getCode()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    sget-object v5, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 306
    :cond_1
    sget-object v9, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->DATABASE_NOT_OPEN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    move-object v6, p0

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 302
    :cond_2
    sget-object v3, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->PARAM_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 298
    :cond_3
    sget-object v7, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->NO_EXIST_METHOD:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 294
    :cond_4
    sget-object v3, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->SUCCESS:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private startSubmitData(Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;)V
    .locals 12

    .line 265
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getSource()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getCallType()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getSubmitJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;->getInstance()Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;->startSubmit(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    move-result-object v1

    const/4 v4, 0x0

    .line 270
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getOriginJson()Lorg/json/JSONObject;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->sendExtendCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    sget-object v7, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getCallType()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getOriginJson()Lorg/json/JSONObject;

    move-result-object v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->sendExtendCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private stopSubmitData(Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;)V
    .locals 8

    .line 280
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getSource()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getCallType()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-static {}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;->getInstance()Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;->stopSubmit()Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    move-result-object v1

    const/4 v4, 0x0

    .line 284
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getOriginJson()Lorg/json/JSONObject;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->sendExtendCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop SubmitData Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientLogModule"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v3, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getCallType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->getOriginJson()Lorg/json/JSONObject;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->sendExtendCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private synchronousCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    const-string v0, "respMsg"

    const-string v1, "respCode"

    if-eqz p3, :cond_0

    .line 233
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 237
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->getCode()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p1, "result"

    .line 240
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 246
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_2

    .line 249
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p2, v2

    goto :goto_1

    .line 251
    :cond_2
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    move-object p2, p3

    .line 253
    :goto_1
    sget-object p3, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-virtual {p3}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    sget-object p3, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-virtual {p3}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->getCode()I

    move-result p3

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 257
    :catch_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "synchronousCall Exception Exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ClientLogModule"

    invoke-static {p3, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const-string p4, "ClientLogModule"

    const/4 v0, 0x0

    .line 108
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p3, "methodId"

    .line 109
    invoke-virtual {v7, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc originJson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sendClientLog"

    .line 111
    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0, p2, p1, v7}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->sendClientLog(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "closeClientLog"

    .line 113
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 114
    invoke-direct {p0, p2, p1, v7}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->closeClientLog(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 116
    :cond_1
    sget-object v4, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->NO_EXIST_METHOD:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 117
    sget-object p3, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->NO_EXIST_METHOD:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-direct {p0, p3, v0, v7}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->synchronousCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    move-object v7, v0

    .line 120
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v4, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 122
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;

    invoke-direct {p0, p1, v0, v7}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->synchronousCall(Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public flushData()V
    .locals 13

    const-string v0, "flushData: "

    const-string v1, "ClientLogModule"

    const-string v2, "getTransId"

    .line 69
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;->getInstance()Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogManager;->getDatabaseManager()Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 71
    invoke-virtual {v3}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryAllSubmittingCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    .line 77
    invoke-virtual {v3}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->limitQuerySubmittingRecord()Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 79
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getJsonString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v7}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getTransid()Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "status"

    .line 82
    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "ID"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getID()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v3, v8, v9, v10}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->update(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "clientLog"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.0"

    return-object v0
.end method
