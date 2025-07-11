.class public Lcom/netease/pharos/netlag/NetworkResult;
.super Ljava/lang/Object;
.source "NetworkResult.java"


# static fields
.field public static final CANCEL:I = -0x1

.field public static final ERROR_HAS_RUNNING:I = 0xb

.field public static final ERROR_NETWORK:I = 0x2

.field public static final ERROR_PARAMS_ILLEGAL:I = 0x1

.field public static final FAILED:I = -0x2

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN:I = -0x3


# instance fields
.field private final code:I

.field private final errorMsg:Ljava/lang/String;

.field private resultObj:Lorg/json/JSONObject;

.field private type:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 48
    invoke-static {p1}, Lcom/netease/pharos/netlag/NetworkResult;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netease/pharos/netlag/NetworkResult;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x3

    .line 40
    iput v0, p0, Lcom/netease/pharos/netlag/NetworkResult;->type:I

    .line 43
    iput p1, p0, Lcom/netease/pharos/netlag/NetworkResult;->code:I

    .line 44
    iput-object p2, p0, Lcom/netease/pharos/netlag/NetworkResult;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public static cancel()Lcom/netease/pharos/netlag/NetworkResult;
    .locals 5

    .line 98
    new-instance v0, Lcom/netease/pharos/netlag/NetworkResult;

    const/4 v1, 0x0

    const-string v2, "netlag cancel"

    invoke-direct {v0, v1, v2}, Lcom/netease/pharos/netlag/NetworkResult;-><init>(ILjava/lang/String;)V

    const/4 v1, -0x1

    .line 99
    iput v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->type:I

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    .line 102
    :try_start_0
    invoke-static {}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->getInstance()Lcom/netease/pharos/netlag/NetworkCheckProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->getConfig()Lcom/netease/pharos/netlag/NetworkCheckConfig;

    move-result-object v1

    .line 103
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "project"

    invoke-virtual {v1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getProject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "testlog"

    invoke-virtual {v1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getTestLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "transid"

    invoke-static {}, Lcom/netease/pharos/util/Util;->getTransId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "udid"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/PharosProxy;->getUdid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "network"

    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/network/NetworkStatus;->getNetwork()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "lag_id"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getLagID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "code"

    iget v3, v0, Lcom/netease/pharos/netlag/NetworkResult;->code:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "errlog"

    iget-object v3, v0, Lcom/netease/pharos/netlag/NetworkResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "result"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static fail(I)Lcom/netease/pharos/netlag/NetworkResult;
    .locals 4

    .line 52
    new-instance v0, Lcom/netease/pharos/netlag/NetworkResult;

    invoke-direct {v0, p0}, Lcom/netease/pharos/netlag/NetworkResult;-><init>(I)V

    const/4 p0, -0x2

    .line 53
    iput p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->type:I

    .line 54
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iput-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    .line 61
    :try_start_0
    invoke-static {}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->getInstance()Lcom/netease/pharos/netlag/NetworkCheckProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->getConfig()Lcom/netease/pharos/netlag/NetworkCheckConfig;

    move-result-object p0

    .line 62
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "project"

    invoke-virtual {p0}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getProject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "testlog"

    invoke-virtual {p0}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getTestLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "transid"

    invoke-static {}, Lcom/netease/pharos/util/Util;->getTransId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "lag_id"

    invoke-virtual {p0}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getLagID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "network"

    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/network/NetworkStatus;->getNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "code"

    iget v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->code:I

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "errlog"

    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "result"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static getErrorMessage(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const-string p0, "netlag unknown error"

    return-object p0

    :cond_0
    const-string p0, "netlag processing"

    return-object p0

    :cond_1
    const-string p0, "netlag network error"

    return-object p0

    :cond_2
    const-string p0, "netlag params illegal"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static isProcessing(Lorg/json/JSONObject;)Lcom/netease/pharos/netlag/NetworkResult;
    .locals 3

    .line 123
    new-instance v0, Lcom/netease/pharos/netlag/NetworkResult;

    const/16 v1, 0xb

    const-string v2, "netlag processing"

    invoke-direct {v0, v1, v2}, Lcom/netease/pharos/netlag/NetworkResult;-><init>(ILjava/lang/String;)V

    const/4 v1, -0x2

    .line 124
    iput v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->type:I

    if-eqz p0, :cond_0

    .line 126
    iput-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    goto :goto_0

    .line 129
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iput-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    .line 133
    :goto_0
    :try_start_0
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "transid"

    invoke-static {}, Lcom/netease/pharos/util/Util;->getTransId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "network"

    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/network/NetworkStatus;->getNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "code"

    iget v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->code:I

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "errlog"

    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    iget-object p0, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v1, "result"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static success(Lorg/json/JSONObject;)Lcom/netease/pharos/netlag/NetworkResult;
    .locals 5

    .line 78
    new-instance v0, Lcom/netease/pharos/netlag/NetworkResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/pharos/netlag/NetworkResult;-><init>(I)V

    .line 79
    iput v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->type:I

    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    .line 82
    :try_start_0
    invoke-static {}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->getInstance()Lcom/netease/pharos/netlag/NetworkCheckProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->getConfig()Lcom/netease/pharos/netlag/NetworkCheckConfig;

    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "project"

    invoke-virtual {v1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getProject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "testlog"

    invoke-virtual {v1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getTestLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "transid"

    invoke-static {}, Lcom/netease/pharos/util/Util;->getTransId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "udid"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/PharosProxy;->getUdid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "network"

    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/network/NetworkStatus;->getNetwork()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v2, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v3, "lag_id"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getLagID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "code"

    iget v3, v0, Lcom/netease/pharos/netlag/NetworkResult;->code:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "errlog"

    iget-object v3, v0, Lcom/netease/pharos/netlag/NetworkResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget-object v1, v0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public getResult()Lorg/json/JSONObject;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkResult;->resultObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/netease/pharos/netlag/NetworkResult;->type:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 164
    iget v0, p0, Lcom/netease/pharos/netlag/NetworkResult;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
