.class public Lcom/netease/ntunisdk/base/model/SdkFeature;
.super Lcom/netease/ntunisdk/base/model/SdkModel;
.source "SdkFeature.java"


# instance fields
.field public feature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/model/SdkModel;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkFeature;->feature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromJson(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "feature"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkFeature;->feature:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "feature"

    .line 24
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkFeature;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 27
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public wrapFrom(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public wrapTo()Ljava/lang/Object;
    .locals 7

    .line 35
    invoke-static {}, Lcom/netease/ntunisdk/base/constant/b;->values()[Lcom/netease/ntunisdk/base/constant/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 36
    iget-object v5, v4, Lcom/netease/ntunisdk/base/constant/b;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/ntunisdk/base/model/SdkFeature;->feature:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    iget-object v2, v4, Lcom/netease/ntunisdk/base/constant/b;->f:Ljava/lang/String;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
