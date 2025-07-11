.class public Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;
.super Ljava/lang/Object;
.source "ClientLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientLog"

.field private static sClientLog:Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog; = null

.field private static final sModuleName:Ljava/lang/String; = "clientLog"

.field private static final sSource:Ljava/lang/String; = "crashhunter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createUploadJsonInfo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "sendClientLog"

    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getmCurrentParamsInfo()Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->getmParamsJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "moduleEventInfo"

    .line 39
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "log"

    .line 40
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientLog [sendClientLog ] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getInstence()Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;
    .locals 1

    .line 26
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sClientLog:Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sClientLog:Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    .line 30
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sClientLog:Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    return-object v0
.end method


# virtual methods
.method public addModuleCallback()V
    .locals 0

    return-void
.end method

.method public sendClientLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
