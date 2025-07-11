.class public Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;
.super Ljava/lang/Object;
.source "ClientLogTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final clientLogTable:Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

.field private final databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;->clientLogTable:Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    .line 21
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;->clientLogTable:Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;->submit(Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v1, ""

    const-string v3, "ID"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 53
    :try_start_1
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;->clientLogTable:Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getID()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 56
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;->clientLogTable:Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getJsonString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "status"

    .line 57
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    iget-object v5, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;->clientLogTable:Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getID()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v5, v2, v3, v4}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->update(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 62
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call clientLogCallable execute Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientLogModule"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public submit(Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;)Z
    .locals 4

    .line 27
    :try_start_0
    sget v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant;->EB_TAG:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "https://sigma-adclientlog-g0.proxima.nie.netease.com"

    if-ne v0, v1, :cond_0

    :try_start_1
    const-string v2, "https://sigma-adclientlog-g0.proxima.nie.easebar.com"

    goto :goto_0

    .line 29
    :cond_0
    sget v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant;->EB_TAG:I

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getJsonString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    const-string v1, "Content-Type"

    const-string v3, "application/json"

    invoke-static {v2, p1, v0, v1, v3}, Lcom/netease/ntunisdk/modules/clientlog/utils/HttpUtil;->postData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "submit Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClientLogModule"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
