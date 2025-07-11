.class Lcom/netease/ntunisdk/SdkFacebookAd$1;
.super Ljava/lang/Object;
.source "SdkFacebookAd.java"

# interfaces
.implements Lcom/facebook/applinks/AppLinkData$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebookAd;->extendFunc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFacebookAd;

.field final synthetic val$rlt:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebookAd;Lorg/json/JSONObject;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->this$0:Lcom/netease/ntunisdk/SdkFacebookAd;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V
    .locals 4

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const-string v1, "respCode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const-string v1, "respMsg"

    const-string v2, "succ"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "code"

    if-nez p1, :cond_0

    .line 164
    :try_start_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const/16 v1, 0xc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const-string v0, "errMsg"

    const-string v1, "appLinkData is null"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getTargetUri()Landroid/net/Uri;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const-string v2, "targetUri"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, ""

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData()Lorg/json/JSONObject;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const-string v2, "appLinkData"

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getArgumentBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const-string v2, "argumentBundle"

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->this$0:Lcom/netease/ntunisdk/SdkFacebookAd;

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/SdkFacebookAd;->access$000(Lcom/netease/ntunisdk/SdkFacebookAd;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const-string v1, "promotionCode"

    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getPromotionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const-string v1, "ref"

    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    const-string v1, "isAutoAppLink"

    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->isAutoAppLink()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :goto_3
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->this$0:Lcom/netease/ntunisdk/SdkFacebookAd;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebookAd$1;->val$rlt:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkFacebookAd;->extendFuncCall(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-void
.end method
