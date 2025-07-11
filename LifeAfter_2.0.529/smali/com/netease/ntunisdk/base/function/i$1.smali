.class final Lcom/netease/ntunisdk/base/function/i$1;
.super Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;
.source "UploadRealName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/function/i;->a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(ILorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->a:I

    iput-object p2, p0, Lcom/netease/ntunisdk/base/function/i$1;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string p2, "response"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload_realname processResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/netease/ntunisdk/base/function/i$1;->responseCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UploadRealName"

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "step"

    const-string v3, "upload_realname"

    .line 56
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "request"

    .line 57
    iget-object v3, p0, Lcom/netease/ntunisdk/base/function/i$1;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "no response"

    .line 58
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "responseCode"

    .line 59
    iget v3, p0, Lcom/netease/ntunisdk/base/function/i$1;->responseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "exception"

    .line 60
    iget-object v3, p0, Lcom/netease/ntunisdk/base/function/i$1;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "UNISDK_LOGIN_ERR_MSG"

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1, v5, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_1
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "code"

    .line 74
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const/16 v1, 0xc8

    if-eq v1, p2, :cond_0

    const-string p2, "upload_realname result code != 200, result:"

    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-static {v2, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p2, v5, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget p2, p0, Lcom/netease/ntunisdk/base/function/i$1;->a:I

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/function/j;->a(Lcom/netease/ntunisdk/base/SdkBase;I)V

    .line 87
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "upload_realname json result exception:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p2, v5, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "upload_realname result is invalid"

    .line 100
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p2, v5, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string p2, "LOGIN_STAT"

    invoke-virtual {p1, p2, v4}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    .line 109
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->jfCheckRealNameDone(I)V

    return v4
.end method
