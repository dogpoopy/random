.class Lcom/netease/ntunisdk/SdkAppsflyerAd$1;
.super Ljava/lang/Object;
.source "SdkAppsflyerAd.java"

# interfaces
.implements Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkAppsflyerAd;->extendFunc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkAppsflyerAd;

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkAppsflyerAd;Lorg/json/JSONObject;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->this$0:Lcom/netease/ntunisdk/SdkAppsflyerAd;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidateInApp()V
    .locals 3

    const-string v0, "SdkAppsflyerAd"

    const-string v1, "Purchase validated successfully"

    .line 156
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string v1, "errCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string v1, "data"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->this$0:Lcom/netease/ntunisdk/SdkAppsflyerAd;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->val$jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkAppsflyerAd;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onValidateInAppFailure(Ljava/lang/String;)V
    .locals 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValidateInAppFailure called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkAppsflyerAd"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string v1, "errCode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string v0, "data"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->this$0:Lcom/netease/ntunisdk/SdkAppsflyerAd;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;->val$jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkAppsflyerAd;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
