.class Lcom/netease/ntunisdk/SdkFacebook$4$1;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook$4;->call(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkFacebook$4;

.field final synthetic val$result:Lcom/facebook/login/LoginResult;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook$4;Lcom/facebook/login/LoginResult;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$4;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->val$result:Lcom/facebook/login/LoginResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on login callback, login successfully: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniSDK SdkFacebook"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UEMAIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "email"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", USR_NAME="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "name"

    .line 295
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UEMAIL"

    invoke-interface {v1, v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "USR_NAME"

    invoke-interface {v1, v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hometown"

    .line 306
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 308
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UHOMETOWN"

    invoke-interface {v1, v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UHOMETOWN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->val$result:Lcom/facebook/login/LoginResult;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    .line 315
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkFacebook$4;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UIN"

    invoke-virtual {v0, v2, v1}, Lcom/netease/ntunisdk/SdkFacebook;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkFacebook$4;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SESSION"

    invoke-virtual {v0, v2, v1}, Lcom/netease/ntunisdk/SdkFacebook;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FB_SESSION"

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$4;

    iget-object p1, p1, Lcom/netease/ntunisdk/SdkFacebook$4;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->setLoginStat(I)V

    .line 319
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$4;

    iget-boolean p1, p1, Lcom/netease/ntunisdk/SdkFacebook$4;->val$isLogin:Z

    if-eqz p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$4;

    iget-object p1, p1, Lcom/netease/ntunisdk/SdkFacebook$4;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook;->loginDone(I)V

    goto :goto_1

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$4;

    iget-object p1, p1, Lcom/netease/ntunisdk/SdkFacebook$4;->val$callback:Lcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;

    if-eqz p1, :cond_3

    .line 322
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$4$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$4;

    iget-object p1, p1, Lcom/netease/ntunisdk/SdkFacebook$4;->val$callback:Lcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;->done(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
