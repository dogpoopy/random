.class final Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$1;
.super Ljava/lang/Object;
.source "DeviceUtils.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppSetID(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

.field final synthetic val$jsonObj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V
    .locals 0

    .line 1312
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$1;->val$jsonObj:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$1;->val$deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "unisdkbase"

    const-string v0, "native"

    const-string v1, "getAppSetID"

    const-string v2, "methodId"

    const-string v3, "respMsg"

    const-string v4, "respCode"

    .line 1315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UNISDK DeviceUtils"

    invoke-static {v6, v5}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v5, "onSuccess"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length p2, p3

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 1318
    aget-object p3, p3, p2

    if-eqz p3, :cond_2

    .line 1320
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "getScope"

    new-array v8, p2, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1321
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getId"

    new-array v9, p2, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x1

    .line 1322
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1323
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1324
    iget-object v8, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$1;->val$jsonObj:Lorg/json/JSONObject;

    if-nez v8, :cond_0

    .line 1326
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1327
    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v9, "scope"

    new-array v10, p2, [Ljava/lang/Object;

    .line 1329
    invoke-virtual {v5, p3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "id"

    new-array v9, p2, [Ljava/lang/Object;

    .line 1330
    invoke-virtual {v7, p3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v8, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1331
    invoke-virtual {v8, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "success"

    .line 1332
    invoke-virtual {v8, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAppSetID : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$1;->val$deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p1, p3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->onCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 1338
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1340
    :try_start_1
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$1;->val$jsonObj:Lorg/json/JSONObject;

    if-nez p2, :cond_1

    .line 1342
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 1343
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/16 p3, 0x2710

    .line 1345
    invoke-virtual {p2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "getAppSetID failed"

    .line 1346
    invoke-virtual {p2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1347
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$1;->val$deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p1, p2}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->onCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
