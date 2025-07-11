.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;
.super Ljava/lang/Object;
.source "SdkNeteaseGlobal.java"

# interfaces
.implements Lcom/netease/mpay/oversea/SyncApiAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

.field final synthetic val$obj:Lorg/json/JSONObject;

.field final synthetic val$uniCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V
    .locals 0

    .line 1541
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$obj:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$uniCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThirdPartyCredentials onFailure code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc9

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xcd

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xcc

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xcb

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xca

    .line 1566
    :goto_0
    :pswitch_4
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$obj:Lorg/json/JSONObject;

    const-string v2, "code"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThirdPartyCredentials JSONException:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->extendFuncCall(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThirdPartyCredentials onSuccess uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$uniCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;

    if-nez v0, :cond_1

    .line 1578
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$obj:Lorg/json/JSONObject;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1579
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$obj:Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1580
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$obj:Lorg/json/JSONObject;

    const-string v0, "token"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    .line 1581
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1582
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1583
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$obj:Lorg/json/JSONObject;

    const-string p3, "permissions"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1586
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getThirdPartyCredentials JSONException:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iget-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_1

    .line 1590
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;->callback(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
