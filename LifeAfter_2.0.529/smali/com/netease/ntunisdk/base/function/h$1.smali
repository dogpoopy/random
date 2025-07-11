.class final Lcom/netease/ntunisdk/base/function/h$1;
.super Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;
.source "UniSauth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/function/h;->a(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;ZLcom/netease/ntunisdk/base/SdkBase;IZ)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->e:Lorg/json/JSONObject;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/function/h$1;->d:Z

    iput-object p3, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput p4, p0, Lcom/netease/ntunisdk/base/function/h$1;->c:I

    iput-boolean p5, p0, Lcom/netease/ntunisdk/base/function/h$1;->b:Z

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string p2, "response"

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uni_sauth processResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/netease/ntunisdk/base/function/h$1;->responseCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UniSauth"

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "step"

    const-string v3, "uni_sauth"

    .line 93
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "request"

    .line 94
    iget-object v3, p0, Lcom/netease/ntunisdk/base/function/h$1;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "no response"

    .line 95
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "responseCode"

    .line 96
    iget v3, p0, Lcom/netease/ntunisdk/base/function/h$1;->responseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "exception"

    .line 97
    iget-object v3, p0, Lcom/netease/ntunisdk/base/function/h$1;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "UNISDK_LOGIN_ERR_MSG"

    if-nez v1, :cond_6

    .line 105
    :try_start_1
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    .line 108
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "subcode"

    .line 109
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 110
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget p2, p0, Lcom/netease/ntunisdk/base/function/h$1;->responseCode:I

    const/16 v6, 0x249

    if-ne v6, p2, :cond_0

    if-ne v6, v4, :cond_0

    iget-boolean p2, p0, Lcom/netease/ntunisdk/base/function/h$1;->d:Z

    if-nez p2, :cond_0

    const-string p1, "uni_sauth fallback!!!"

    .line 114
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string p2, "UNI_SAUTH_FALLBACK"

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 116
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget p2, p0, Lcom/netease/ntunisdk/base/function/h$1;->c:I

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->jfCheckRealNameDone(I)V

    goto/16 :goto_1

    .line 118
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v6, "ENABLE_CHANGE_LOCATION"

    invoke-interface {p2, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x191

    if-ne p2, v4, :cond_2

    const/16 p2, 0x20

    if-ne p2, v5, :cond_2

    const-string p1, "account_region"

    .line 119
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 121
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v1, "PLAYER_REGION"

    invoke-interface {p2, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/function/h;->a(Lcom/netease/ntunisdk/base/SdkBase;)V

    goto/16 :goto_1

    :cond_2
    const/16 p2, 0xc8

    if-ne p2, v4, :cond_5

    const-string p1, "unisdk_login_json"

    .line 125
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v4, "UNISDK_LOGIN_JSON"

    invoke-interface {p2, v4, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setBackSauthLoginJson(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string p2, "SAUTH_RESPONSE_REALNAME_MSG"

    const-string v4, "realname_msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p2, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string p2, "SAUTH_RESPONSE_AAS_MSG"

    const-string v4, "aas_msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->d:Z

    if-nez p1, :cond_3

    .line 143
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/SdkBase;->setLoginSauthInfo()V

    .line 147
    :cond_3
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->b:Z

    if-eqz p1, :cond_4

    .line 148
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget p2, p0, Lcom/netease/ntunisdk/base/function/h$1;->c:I

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->checkRealName(I)V

    goto :goto_1

    .line 153
    :cond_4
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget p2, p0, Lcom/netease/ntunisdk/base/function/h$1;->c:I

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/function/j;->a(Lcom/netease/ntunisdk/base/SdkBase;I)V

    goto :goto_1

    :cond_5
    const-string p2, "uni_sauth result code != 200, result:"

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2, v3, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/function/h;->b(Lcom/netease/ntunisdk/base/SdkBase;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "uni_sauth result json exception:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2, v3, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/function/h;->b(Lcom/netease/ntunisdk/base/SdkBase;)V

    goto :goto_1

    :cond_6
    const-string p1, "uni_sauth result is invalid"

    .line 170
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2, v3, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/function/h;->b(Lcom/netease/ntunisdk/base/SdkBase;)V

    .line 175
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const/4 p2, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
