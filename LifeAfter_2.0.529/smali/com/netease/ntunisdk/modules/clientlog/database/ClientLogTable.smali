.class public Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;
.super Ljava/lang/Object;
.source "ClientLogTable.java"


# instance fields
.field private ID:I

.field private log:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private sdk:Ljava/lang/String;

.field private status:I

.field private timestamp:Ljava/lang/String;

.field private transid:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->ID:I

    return v0
.end method

.method public getJsonString()Ljava/lang/String;
    .locals 4

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "log"

    .line 97
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->log:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk"

    .line 98
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->sdk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    .line 99
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 100
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "transid"

    .line 101
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->transid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platform"

    .line 102
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 103
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJsonString Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientLogModule"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->log:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->sdk:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->status:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTransid()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->transid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setID(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->ID:I

    return-void
.end method

.method public setLog(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->log:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->platform:Ljava/lang/String;

    return-void
.end method

.method public setSdk(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->sdk:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->status:I

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setTransid(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->transid:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->type:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->udid:Ljava/lang/String;

    return-void
.end method
