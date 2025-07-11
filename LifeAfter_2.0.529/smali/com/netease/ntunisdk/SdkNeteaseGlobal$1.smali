.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;
.super Ljava/lang/Object;
.source "SdkNeteaseGlobal.java"

# interfaces
.implements Lcom/netease/mcount/clientlog/ClientLogHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;->initClientLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mUniTransactionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

.field final synthetic val$isBaseNCLSupported:Z


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Z)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->val$isBaseNCLSupported:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 282
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->mUniTransactionId:Ljava/lang/String;

    return-void
.end method

.method private appendCommonCLInfo(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "res_code"

    .line 345
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc8

    .line 346
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "gameid"

    .line 349
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "JF_GAMEID"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uid"

    .line 350
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UIN"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "aid"

    .line 351
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "USERINFO_AID"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "roleid"

    .line 352
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "USERINFO_UID"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hostid"

    .line 353
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "USERINFO_HOSTID"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "transid"

    .line 355
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$800(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packagename"

    .line 356
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$900(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channel"

    .line 358
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_channel"

    .line 359
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    .line 360
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    .line 361
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uni_version"

    .line 362
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "base_version"

    .line 363
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getBaseVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "UDID"

    .line 364
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "unisdk_deviceid"

    .line 365
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1000(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 368
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "logtime"

    .line 369
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 370
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 372
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private buildCustomCLInfo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 334
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 338
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    return-object v0
.end method

.method private genUniTransactionId()Ljava/lang/String;
    .locals 6

    .line 306
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$700(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NO_ANDROIDID"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "ENABLE_FAKE_ABOUT_ID"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getDeviceUDID(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const v5, 0x3b9aca00

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "%09d"

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "%s_%s_%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 273
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransId()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$500(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniTransactionId()Ljava/lang/String;
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->val$isBaseNCLSupported:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/clientlog/ClientLog;->getInst()Lcom/netease/ntunisdk/base/utils/clientlog/ClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/clientlog/ClientLog;->getUniTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->mUniTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .line 266
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "UNISDK_LOG_STATUS"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startUniTransaction()V
    .locals 2

    .line 296
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->val$isBaseNCLSupported:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/clientlog/ClientLog;->getInst()Lcom/netease/ntunisdk/base/utils/clientlog/ClientLog;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$600(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/utils/clientlog/ClientLog;->startUniTransaction(Landroid/content/Context;)V

    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->genUniTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->mUniTransactionId:Ljava/lang/String;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUniTransaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->mUniTransactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wrapClientLogInfo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 314
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->buildCustomCLInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 315
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;->appendCommonCLInfo(Lorg/json/JSONObject;)V

    .line 318
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "DISABLE_UPLOAD_LOCAL_IP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 319
    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->traverseJSONObject2removeIP(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method
