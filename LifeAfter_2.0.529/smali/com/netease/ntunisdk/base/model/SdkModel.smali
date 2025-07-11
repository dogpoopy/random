.class public abstract Lcom/netease/ntunisdk/base/model/SdkModel;
.super Ljava/lang/Object;
.source "SdkModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkModel;->fromJson(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)V
    .locals 1

    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/model/SdkModel;->fromJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public abstract fromJson(Lorg/json/JSONObject;)V
.end method

.method public abstract toJson()Lorg/json/JSONObject;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/model/SdkModel;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract wrapFrom(Ljava/lang/Object;)V
.end method

.method public abstract wrapTo()Ljava/lang/Object;
.end method
