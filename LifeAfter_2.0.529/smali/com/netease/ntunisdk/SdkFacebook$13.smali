.class Lcom/netease/ntunisdk/SdkFacebook$13;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook;->queryFriendList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFacebook;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$13;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 8

    const-string v0, "id"

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFriendList onCompleted(1): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK SdkFacebook"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebook$13;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/SdkFacebook;->access$1202(Lcom/netease/ntunisdk/SdkFacebook;Ljava/util/List;)Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 1060
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1061
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_0

    :try_start_0
    const-string v3, "data"

    .line 1064
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1065
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 1066
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1067
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1068
    new-instance v5, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v5}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    .line 1069
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/ntunisdk/base/AccountInfo;->setAccountId(Ljava/lang/String;)V

    const-string v6, "name"

    .line 1070
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/ntunisdk/base/AccountInfo;->setNickname(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v5, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setInGame(Z)V

    .line 1072
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://graph.facebook.com/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/picture"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/netease/ntunisdk/base/AccountInfo;->setIcon(Ljava/lang/String;)V

    .line 1073
    iget-object v4, p0, Lcom/netease/ntunisdk/SdkFacebook$13;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {v4}, Lcom/netease/ntunisdk/SdkFacebook;->access$1200(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1078
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1084
    :cond_0
    new-instance p1, Lcom/netease/ntunisdk/SdkFacebook$13$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/SdkFacebook$13$1;-><init>(Lcom/netease/ntunisdk/SdkFacebook$13;)V

    .line 1121
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook$13;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    new-instance v3, Lcom/netease/ntunisdk/SdkFacebook$13$2;

    invoke-direct {v3, p0, p1}, Lcom/netease/ntunisdk/SdkFacebook$13$2;-><init>(Lcom/netease/ntunisdk/SdkFacebook$13;Lcom/facebook/GraphRequest$Callback;)V

    new-array p1, v2, [Ljava/lang/String;

    const-string v4, "user_friends"

    aput-object v4, p1, v1

    invoke-static {v0, v3, v2, p1}, Lcom/netease/ntunisdk/SdkFacebook;->access$1300(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    return-void
.end method
