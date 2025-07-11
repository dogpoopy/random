.class Lcom/netease/ntunisdk/extend/NetworkCardInfo$1;
.super Ljava/lang/Object;
.source "NetworkCardInfo.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/api/ModulesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/extend/NetworkCardInfo;->setSdkExtend(Lcom/netease/ntunisdk/SdkExtend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/extend/NetworkCardInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/extend/NetworkCardInfo;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo$1;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extendFuncCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "NetworkCardInfo"

    :try_start_0
    const-string p2, "extendFuncCallback"

    .line 51
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->access$000()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 53
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "methodId"

    const-string v0, ""

    .line 55
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "getNetworkInfoJson"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "getType"

    const/4 v0, -0x1

    .line 56
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const-string p2, "unknown"

    .line 67
    invoke-static {p2}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->access$102(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "monitorNetworkState extendFuncCallback: unknown"

    .line 68
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "wlan"

    .line 63
    invoke-static {p2}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->access$102(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "monitorNetworkState extendFuncCallback: wlan"

    .line 64
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "wwan"

    .line 59
    invoke-static {p2}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->access$102(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "monitorNetworkState extendFuncCallback: wwan"

    .line 60
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo$1;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    invoke-static {p1}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->access$200(Lcom/netease/ntunisdk/extend/NetworkCardInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
