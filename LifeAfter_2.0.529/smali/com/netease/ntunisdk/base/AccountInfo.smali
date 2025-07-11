.class public Lcom/netease/ntunisdk/base/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# static fields
.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:D

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/AccountInfo;->setAccountId(Ljava/lang/String;)V

    const-string p1, "unknown"

    .line 81
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/AccountInfo;->setIdType(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/AccountInfo;->setNickname(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/AccountInfo;->setIcon(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/AccountInfo;->setInGame(Z)V

    const-wide/16 v0, 0x0

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setRankScore(D)V

    const-wide/16 v0, 0x0

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setRank(J)V

    const-string p1, ""

    .line 87
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/AccountInfo;->setRemark(Ljava/lang/String;)V

    return-void
.end method

.method public static json2Str(Lcom/netease/ntunisdk/base/AccountInfo;)Ljava/lang/String;
    .locals 0

    .line 244
    invoke-static {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;
    .locals 4

    .line 251
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "accountId"

    .line 256
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mid"

    .line 257
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "idType"

    .line 258
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getIdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "relationType"

    .line 259
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getRelationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nickname"

    .line 260
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayName"

    .line 261
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "icon"

    .line 262
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pictureUrl"

    .line 263
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "inGame"

    .line 264
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->isInGame()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "rankScore"

    .line 265
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getRankScore()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "rank"

    .line 266
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getRank()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "remark"

    .line 267
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/AccountInfo;->getRemark()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "UniSDK AccountInfo"

    const-string v2, "obj2Json error"

    .line 269
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->h:J

    return-wide v0
.end method

.method public getRankScore()D
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->g:D

    return-wide v0
.end method

.method public getRelationType()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public isInGame()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/AccountInfo;->f:Z

    return v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setIdType(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setInGame(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->f:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setRank(J)V
    .locals 0

    .line 216
    iput-wide p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->h:J

    return-void
.end method

.method public setRankScore(D)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->g:D

    return-void
.end method

.method public setRelationType(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/netease/ntunisdk/base/AccountInfo;->j:Ljava/lang/String;

    return-void
.end method
