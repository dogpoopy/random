.class final Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$2;
.super Ljava/lang/Object;
.source "DeviceUtils.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppOccupiedStorage(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

.field final synthetic val$jsonObj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V
    .locals 0

    .line 1385
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$2;->val$jsonObj:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$2;->val$deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinished(Ljava/lang/Object;)V
    .locals 0

    .line 1385
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$2;->onFinished(Ljava/util/Map;)V

    return-void
.end method

.method public onFinished(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "native"

    .line 1389
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$2;->val$jsonObj:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 1391
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    const-string v3, "getAppOccupiedStorage"

    .line 1392
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "respCode"

    const/4 v3, 0x0

    .line 1394
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "respMsg"

    const-string v3, "success"

    .line 1395
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 1397
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1398
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p1, "UNISDK DeviceUtils"

    .line 1401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppOccupiedStorage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$2;->val$deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    const-string v2, "unisdkbase"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->onCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$2;->val$deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    const-string v2, "crashhunter"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->onCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1405
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
