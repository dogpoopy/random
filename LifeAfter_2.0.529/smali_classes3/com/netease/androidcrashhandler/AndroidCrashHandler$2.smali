.class Lcom/netease/androidcrashhandler/AndroidCrashHandler$2;
.super Ljava/lang/Object;
.source "AndroidCrashHandler.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/AndroidCrashHandler;->handleAnr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 234
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->updateDiInfoToLocalFile()V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrUploadFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    sget-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrUploadFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->copyParamFile(Ljava/lang/String;)Z

    const/4 v0, 0x6

    const-string v1, "OCCUR ANR"

    .line 237
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILjava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sendClientLog(Ljava/lang/String;)V

    return-void
.end method
