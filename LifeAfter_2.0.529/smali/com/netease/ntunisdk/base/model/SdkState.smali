.class public Lcom/netease/ntunisdk/base/model/SdkState;
.super Lcom/netease/ntunisdk/base/model/SdkModel;
.source "SdkState.java"


# instance fields
.field public code:I

.field public message:Ljava/lang/String;

.field public module:Ljava/lang/String;

.field public subcode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/model/SdkModel;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkModel;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    return-void
.end method


# virtual methods
.method public fromJson(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "code"

    const/4 v1, -0x1

    .line 23
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    const-string v0, "subcode"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/model/SdkState;->subcode:I

    const-string v0, "message"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    const-string v0, "module"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkState;->module:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    :try_start_0
    iget v1, p0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    if-ltz v1, :cond_0

    const-string v2, "code"

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "subcode"

    .line 36
    iget v2, p0, Lcom/netease/ntunisdk/base/model/SdkState;->subcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    .line 37
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "module"

    .line 38
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkState;->module:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public wrapFrom(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public wrapTo()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
