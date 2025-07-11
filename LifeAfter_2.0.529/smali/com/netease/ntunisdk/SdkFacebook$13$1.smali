.class Lcom/netease/ntunisdk/SdkFacebook$13$1;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook$13;->onCompleted(Lcom/facebook/GraphResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkFacebook$13;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook$13;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$13$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 6

    const-string v0, "data"

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFriendList onCompleted(2): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK SdkFacebook"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1088
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1089
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1092
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1093
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1094
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1095
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1096
    new-instance v4, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v4}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    const-string v5, "id"

    .line 1097
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netease/ntunisdk/base/AccountInfo;->setAccountId(Ljava/lang/String;)V

    const-string v5, "name"

    .line 1098
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netease/ntunisdk/base/AccountInfo;->setNickname(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v4, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setInGame(Z)V

    const-string v5, "picture"

    .line 1100
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1102
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, "url"

    .line 1104
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/netease/ntunisdk/base/AccountInfo;->setIcon(Ljava/lang/String;)V

    .line 1107
    :cond_0
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkFacebook$13$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$13;

    iget-object v3, v3, Lcom/netease/ntunisdk/SdkFacebook$13;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {v3}, Lcom/netease/ntunisdk/SdkFacebook;->access$1200(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1117
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$13$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$13;

    iget-object p1, p1, Lcom/netease/ntunisdk/SdkFacebook$13;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook$13$1;->this$1:Lcom/netease/ntunisdk/SdkFacebook$13;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkFacebook$13;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkFacebook;->access$1200(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->queryFriendListFinished(Ljava/util/List;)V

    return-void
.end method
