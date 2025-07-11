.class Lcom/netease/ntunisdk/SdkFacebook$5$1;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook$5;->call(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkFacebook$5;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook$5;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$5$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 6

    const-string v0, "picture"

    const-string v1, "name"

    const-string v2, "id"

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/user info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UniSDK SdkFacebook"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 359
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/jsonObject: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 362
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkFacebook$5$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$5;

    iget-object v3, v3, Lcom/netease/ntunisdk/SdkFacebook$5;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/SdkFacebook;->access$102(Lcom/netease/ntunisdk/SdkFacebook;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkFacebook$5$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$5;

    iget-object v3, v3, Lcom/netease/ntunisdk/SdkFacebook$5;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/SdkFacebook;->access$202(Lcom/netease/ntunisdk/SdkFacebook;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkFacebook$5$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$5;

    iget-object v3, v3, Lcom/netease/ntunisdk/SdkFacebook$5;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/SdkFacebook;->access$302(Lcom/netease/ntunisdk/SdkFacebook;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "methodId"

    const-string v5, "getFacebookUserInfo"

    .line 366
    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "respCode"

    const/4 v5, 0x0

    .line 367
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "respMsg"

    const-string v5, ""

    .line 368
    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkFacebook$5$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$5;

    iget-object v3, v3, Lcom/netease/ntunisdk/SdkFacebook$5;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {v3}, Lcom/netease/ntunisdk/SdkFacebook;->access$100(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkFacebook$5$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$5;

    iget-object v2, v2, Lcom/netease/ntunisdk/SdkFacebook$5;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {v2}, Lcom/netease/ntunisdk/SdkFacebook;->access$200(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebook$5$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$5;

    iget-object v1, v1, Lcom/netease/ntunisdk/SdkFacebook$5;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkFacebook;->access$300(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook$5$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$5;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkFacebook$5;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkFacebook;->extendFuncCall(Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/live_user_info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 376
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
