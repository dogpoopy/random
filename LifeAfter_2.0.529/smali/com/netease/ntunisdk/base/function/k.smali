.class public final Lcom/netease/ntunisdk/base/function/k;
.super Ljava/lang/Object;
.source "OrderProtocol.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 4

    .line 31
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "DEBUG_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    sput-boolean v2, Lcom/netease/ntunisdk/base/function/k;->a:Z

    .line 33
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SDK_UNI_UPDATE_URL"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "EB"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://g0.gsf.easebar.com/feature2/"

    goto :goto_0

    :cond_1
    const-string v0, "https://g0.gsf.netease.com/feature2/"

    goto :goto_0

    .line 39
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, ""

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "feature2/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ProtocolFeature2"

    if-eqz v1, :cond_4

    const-string v0, "null or empty url, request protocol info will not go on"

    .line 43
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v3, "JF_GAMEID"

    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".common_config.json?gameid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "url: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/netease/ntunisdk/base/function/k$1;

    invoke-direct {v1}, Lcom/netease/ntunisdk/base/function/k$1;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wget(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    return-void
.end method

.method public static a(Lcom/netease/ntunisdk/base/OrderInfo;ZZ)V
    .locals 1

    .line 135
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz p2, :cond_1

    const-string p2, "REQUIRE_AI_DETECT"

    .line 137
    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 139
    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->continueOrderSetting(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    return-void

    .line 143
    :cond_0
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/base/function/a;->a(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    return-void

    :cond_1
    const/4 p1, 0x3

    .line 147
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    const-string p1, "confirmation denied, order cancel"

    .line 148
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 1154
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ProtocolFeature2"

    const-string v0, "json invalid"

    .line 1155
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1159
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "order_privacy_hint"

    .line 1160
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    const-string p0, "enable"

    .line 1164
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/netease/ntunisdk/base/function/k;->b:Z

    const-string p0, "version"

    .line 1165
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/base/function/k;->e:Ljava/lang/String;

    const-string p0, "text"

    .line 1166
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/base/function/k;->d:Ljava/lang/String;

    const-string p0, "title"

    .line 1167
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/base/function/k;->c:Ljava/lang/String;

    const-string p0, "agree"

    .line 1168
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/base/function/k;->f:Ljava/lang/String;

    const-string p0, "reject"

    .line 1169
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/base/function/k;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1172
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/netease/ntunisdk/base/OrderInfo;Z)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const-string v4, "ProtocolFeature2"

    if-nez v1, :cond_0

    const-string v0, "invalid order info instance"

    .line 101
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 105
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UIN"

    invoke-interface {v5, v7, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "uid="

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-boolean v6, Lcom/netease/ntunisdk/base/function/k;->a:Z

    const/4 v7, 0x1

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/netease/ntunisdk/base/function/k;->b:Z

    if-eqz v6, :cond_2

    :cond_1
    sget-object v6, Lcom/netease/ntunisdk/base/function/k;->d:Ljava/lang/String;

    .line 109
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/netease/ntunisdk/base/function/k;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 110
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 112
    :goto_0
    sget-object v8, Lcom/netease/ntunisdk/base/function/k;->h:Landroid/content/SharedPreferences;

    if-nez v8, :cond_3

    .line 113
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    sput-object v8, Lcom/netease/ntunisdk/base/function/k;->h:Landroid/content/SharedPreferences;

    .line 116
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/netease/ntunisdk/base/function/k;->e:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    sget-object v8, Lcom/netease/ntunisdk/base/function/k;->h:Landroid/content/SharedPreferences;

    invoke-interface {v8, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "enable:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", agreed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_5

    if-eqz v8, :cond_4

    goto :goto_1

    .line 1067
    :cond_4
    new-instance v10, Lcom/netease/ntunisdk/base/view/Alerter;

    invoke-direct {v10, v0}, Lcom/netease/ntunisdk/base/view/Alerter;-><init>(Landroid/content/Context;)V

    sget-object v11, Lcom/netease/ntunisdk/base/function/k;->c:Ljava/lang/String;

    sget-object v12, Lcom/netease/ntunisdk/base/function/k;->d:Ljava/lang/String;

    sget-object v13, Lcom/netease/ntunisdk/base/function/k;->f:Ljava/lang/String;

    new-instance v14, Lcom/netease/ntunisdk/base/function/k$2;

    invoke-direct {v14, v5, v1, v2}, Lcom/netease/ntunisdk/base/function/k$2;-><init>(Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    sget-object v15, Lcom/netease/ntunisdk/base/function/k;->g:Ljava/lang/String;

    new-instance v0, Lcom/netease/ntunisdk/base/function/k$3;

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/base/function/k$3;-><init>(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v16, v0

    .line 1068
    invoke-virtual/range {v10 .. v19}, Lcom/netease/ntunisdk/base/view/Alerter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZLcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    return v7

    :cond_5
    :goto_1
    const-string v0, "order confirmation trigger checked to be off"

    .line 122
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method static synthetic b()Landroid/content/SharedPreferences;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/ntunisdk/base/function/k;->h:Landroid/content/SharedPreferences;

    return-object v0
.end method
