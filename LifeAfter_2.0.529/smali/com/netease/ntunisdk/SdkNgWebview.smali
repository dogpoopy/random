.class public Lcom/netease/ntunisdk/SdkNgWebview;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkNgWebview.java"


# static fields
.field private static final SDK_VERSION:Ljava/lang/String; = "2.1"

.field private static final TAG:Ljava/lang/String; = "UniSDK ngwebview"


# instance fields
.field private mIPCManager:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_NO_PAY"

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkNgWebview;->setPropInt(Ljava/lang/String;I)V

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkNgWebview;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method private catUidRoleidServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "UTF-8"

    const-string v1, ""

    .line 231
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "FULL_UIN"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 232
    :try_start_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "USERINFO_UID"

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :try_start_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    const-string v5, "USERINFO_HOSTID"

    invoke-interface {v4, v5, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 235
    :goto_0
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 238
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 240
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    const-string v5, "&server="

    const-string v6, "&role_id="

    const-string v7, "&uid="

    if-eqz v4, :cond_2

    .line 241
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "uid"

    .line 242
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 243
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "role_id"

    .line 245
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v2, "server"

    .line 248
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 249
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 253
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "?"

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_4

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 265
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 268
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    :goto_3
    return-object p1
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "WEBVIEW_HEIGHT"

    const-string v2, "WEBVIEW_WIDTH"

    const-string v3, "WEBVIEW_ORIGIN_Y"

    const-string v4, "WEBVIEW_ORIGIN_X"

    const-string v5, "NGWebViewClose"

    const-string v6, "UniSDK ngwebview"

    const-string v7, "1"

    .line 109
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "methodId"

    .line 110
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "NGWebViewOpenURL"

    .line 111
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v5, "URLString"

    .line 112
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URLString="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v0, "URLString is empty"

    .line 115
    invoke-static {v6, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v9, "scriptVersion"

    .line 119
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "isFullScreen"

    .line 120
    invoke-virtual {v8, v10, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "navigationBarVisible"

    .line 121
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "origin_x"

    .line 122
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "origin_y"

    .line 123
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "cls_btn_origin_x"

    .line 124
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "cls_btn_origin_y"

    .line 125
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 p1, v10

    const-string v10, "cls_btn_width"

    .line 126
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    move/from16 v16, v12

    const-string v12, "cls_btn_height"

    .line 127
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v17, v13

    const-string v13, "width"

    .line 128
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v18, v7

    const-string v7, "height"

    .line 129
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-lez v13, :cond_1

    if-lez v7, :cond_1

    const-string v19, "0"

    move/from16 p1, v13

    move-object/from16 v26, v19

    move/from16 v19, v7

    move-object/from16 v7, v26

    goto :goto_0

    :cond_1
    move/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 p1, v13

    :goto_0
    const-string v13, "orientation"

    .line 133
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v20, v13

    const-string v13, "qstn_close_btn"

    .line 136
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v7

    const-string v7, "closeButtonVisible"

    .line 137
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v22, v7

    const-string v7, "supportBackKey"

    .line 138
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v23, v7

    const-string v7, "additionalUserAgent"

    .line 139
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v24, v13

    const-string v13, "survey.163.com"

    .line 140
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "survey.netease.com"

    .line 141
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "survey.easebar.com"

    .line 142
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "research.163.com"

    .line 143
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "research.easebar.com"

    .line 144
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "survey-game.163.com"

    .line 145
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "research-game.163.com"

    .line 146
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "research-game.easebar.com"

    .line 147
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v3, p1

    move/from16 v0, v16

    move/from16 v2, v17

    move/from16 v4, v19

    move/from16 v13, v20

    move-object/from16 v20, v11

    goto/16 :goto_4

    :cond_3
    :goto_1
    const-string v13, "questionnaire handle."

    .line 148
    invoke-static {v6, v13}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Unisdk/2.0"

    move-object/from16 v20, v11

    const-string v11, "Unisdk/2.1"

    .line 149
    invoke-virtual {v7, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-direct {v1, v5}, Lcom/netease/ntunisdk/SdkNgWebview;->catUidRoleidServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "catUidRoleidServer.URLString="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v11

    const-string v13, "WEBVIEW_ORIENTATION"

    move-object/from16 v25, v5

    const/4 v5, 0x0

    invoke-interface {v11, v13, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v13

    .line 153
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const/4 v11, -0x1

    invoke-interface {v5, v4, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_4

    .line 154
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    invoke-interface {v5, v4, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    move/from16 v16, v4

    .line 156
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    invoke-interface {v4, v3, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_5

    .line 157
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    invoke-interface {v4, v3, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v17, v3

    .line 159
    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v2, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_6

    .line 160
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v2, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    :cond_6
    move/from16 v2, p1

    .line 162
    :goto_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v0, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_7

    .line 163
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v0, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    move v3, v2

    move/from16 v0, v16

    move/from16 v2, v17

    goto :goto_3

    :cond_7
    move v3, v2

    move/from16 v0, v16

    move/from16 v2, v17

    move/from16 v4, v19

    :goto_3
    move-object/from16 v5, v25

    :goto_4
    const-string v11, "intercept_schemes"

    .line 167
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    const-string v11, "handle_schemes"

    .line 169
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 172
    :cond_8
    new-instance v8, Lcom/netease/ntunisdk/WebviewParams;

    invoke-direct {v8}, Lcom/netease/ntunisdk/WebviewParams;-><init>()V

    .line 173
    invoke-virtual {v8, v5}, Lcom/netease/ntunisdk/WebviewParams;->setUrl(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v8, v9}, Lcom/netease/ntunisdk/WebviewParams;->setScriptVersion(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setOriginX(I)V

    .line 176
    invoke-virtual {v8, v2}, Lcom/netease/ntunisdk/WebviewParams;->setOriginY(I)V

    .line 177
    invoke-virtual {v8, v3}, Lcom/netease/ntunisdk/WebviewParams;->setWidth(I)V

    .line 178
    invoke-virtual {v8, v4}, Lcom/netease/ntunisdk/WebviewParams;->setHeight(I)V

    .line 179
    invoke-virtual {v8, v14}, Lcom/netease/ntunisdk/WebviewParams;->setCloseBtnOriginX(I)V

    .line 180
    invoke-virtual {v8, v15}, Lcom/netease/ntunisdk/WebviewParams;->setCloseBtnOriginY(I)V

    .line 181
    invoke-virtual {v8, v10}, Lcom/netease/ntunisdk/WebviewParams;->setCloseBtnWidth(I)V

    .line 182
    invoke-virtual {v8, v12}, Lcom/netease/ntunisdk/WebviewParams;->setCloseBtnHeight(I)V

    .line 183
    invoke-virtual {v8, v13}, Lcom/netease/ntunisdk/WebviewParams;->setOrientation(I)V

    .line 184
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/WebviewParams;->setAdditionalUserAgent(Ljava/lang/String;)V

    move-object/from16 v2, v18

    move-object/from16 v0, v20

    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setNavigationBarVisible(Z)V

    move-object/from16 v0, v24

    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setQstnCloseBtnVisible(Z)V

    move-object/from16 v0, v22

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setCloseButtonVisible(Z)V

    move-object/from16 v0, v23

    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setSupportBackKey(Z)V

    .line 189
    invoke-virtual {v8, v11}, Lcom/netease/ntunisdk/WebviewParams;->setIntercept_schemes(Ljava/lang/String;)V

    move-object/from16 v0, v21

    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setFullScreen(Z)V

    .line 191
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkNgWebview;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->hasCutout(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setHasCutout(Z)V

    .line 192
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "WEBVIEW_BKCOLOR"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setWebviewBackgroundColor(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "YY_GAMEID"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setYYGameID(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setChannelID(Ljava/lang/String;)V

    .line 195
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkNgWebview;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/WebviewParams;->setAppVersionName(Ljava/lang/String;)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkNgWebview;->myCtx:Landroid/content/Context;

    const-class v3, Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "WebviewParams"

    .line 198
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkNgWebview;->mIPCManager:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    if-eqz v2, :cond_9

    .line 202
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkNgWebview;->mIPCManager:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    iget-object v3, v1, Lcom/netease/ntunisdk/SdkNgWebview;->myCtx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->unbindService(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 203
    iput-object v2, v1, Lcom/netease/ntunisdk/SdkNgWebview;->mIPCManager:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    .line 205
    :cond_9
    new-instance v2, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-direct {v2}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;-><init>()V

    iput-object v2, v1, Lcom/netease/ntunisdk/SdkNgWebview;->mIPCManager:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    .line 206
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkNgWebview;->mIPCManager:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    iget-object v3, v1, Lcom/netease/ntunisdk/SdkNgWebview;->myCtx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->bindService(Landroid/content/Context;)V

    .line 208
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkNgWebview;->myCtx:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 209
    :cond_a
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 210
    invoke-static {}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getInstance()Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 212
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    .line 214
    :cond_b
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkNgWebview;->mIPCManager:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    if-eqz v0, :cond_c

    .line 215
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkNgWebview;->mIPCManager:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v2, "extendFunc json parse error"

    .line 220
    invoke-static {v6, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_c
    :goto_5
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "ngwebview"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNgWebview;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 64
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNgWebview;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNgWebview;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIN"

    .line 72
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNgWebview;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.1"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.1"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 2

    const-string v0, "UniSDK ngwebview"

    const-string v1, "init..."

    .line 79
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 80
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "UIN"

    const-string v1, "NGWebViewUid"

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNgWebview;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SESSION"

    const-string v1, "NGWebViewSession"

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNgWebview;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LOGIN_STAT"

    const/4 v1, 0x1

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNgWebview;->setPropInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNgWebview;->loginDone(I)V

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
