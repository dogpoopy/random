.class public Lcom/netease/ntunisdk/base/JfGas;
.super Ljava/lang/Object;
.source "JfGas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;,
        Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "UTF-8"

    .line 1146
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "YY_GAMEID"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1147
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "JF_AIM_INFO"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1148
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "country"

    .line 1149
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&operation_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&product_region="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1151
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "PRODUCT_LANGUAGE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&product_language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "extraJson:"

    const-string v4, "step"

    const-string v5, "UniSDK JfGas"

    const-string v0, "JfGas createOrder"

    .line 100
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v6, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v6, v2}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 102
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPayChannelManager()Lcom/netease/ntunisdk/base/PayChannelManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/PayChannelManager;->allyPayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "allysdk"

    .line 106
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    .line 109
    :goto_0
    iget-object v7, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v8, "VIRTUAL_ORDER"

    invoke-virtual {v7, v8}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, "basechannel"

    .line 111
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    :cond_1
    move-object v7, v0

    .line 113
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "createOrder_in"

    .line 115
    invoke-virtual {v8, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_1
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 120
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x3

    if-eqz v0, :cond_2

    const-string v0, "paychannel empty"

    .line 121
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v9}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 123
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 124
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 127
    :cond_2
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v10, "UNISDK_CREATEORDER_URL"

    invoke-virtual {v0, v10}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "create_order"

    const-string v13, "/create_order"

    const-string v14, "/"

    if-eqz v11, :cond_4

    .line 129
    iget-object v11, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v15, "UNISDK_JF_GAS3_URL"

    invoke-virtual {v11, v15}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 130
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v11, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 133
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfGas3Url()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v15, 0x0

    if-eqz v11, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 143
    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfGas3Url(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v11, "url:order.getJfGas3Url()"

    .line 145
    invoke-static {v5, v11}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfGas3Url()Ljava/lang/String;

    move-result-object v11

    .line 147
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v11, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 150
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 152
    :cond_6
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    move-object v11, v0

    .line 158
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v12, "create order fail"

    if-eqz v0, :cond_8

    const-string v0, "ConstProp.UNISDK_CREATEORDER_URL is empty"

    .line 159
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2, v9}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 161
    invoke-virtual {v2, v12}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 162
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 166
    :cond_8
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v13, "UIN"

    invoke-virtual {v0, v13}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v9, "0"

    if-nez v14, :cond_9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 168
    :cond_9
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v14, "GAS3_UID"

    invoke-virtual {v0, v14}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    move-object v14, v0

    .line 170
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v15, "USERINFO_UID"

    invoke-virtual {v0, v15}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 171
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    move-object/from16 v18, v9

    const-string v9, "USERINFO_HOSTID"

    invoke-virtual {v0, v9}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 173
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    move-object/from16 v20, v14

    const/4 v14, -0x1

    move-object/from16 v21, v12

    const-string v12, "USERINFO_AID"

    invoke-virtual {v0, v12, v14}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v14

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 178
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    move/from16 v22, v14

    const-string v14, "UNISDK_EXT_INFO"

    invoke-virtual {v0, v14}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    move/from16 v22, v14

    .line 182
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v14

    const-string v23, "4"

    move-object/from16 v24, v8

    if-eqz v14, :cond_d

    .line 185
    iget-object v14, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v8, "UNISDK_SERVER_PRIVATEPARAM"

    invoke-virtual {v14, v8}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    move-object v0, v8

    :cond_c
    move-object/from16 v18, v23

    const/4 v8, 0x2

    goto :goto_6

    :cond_d
    const/4 v8, 0x1

    .line 190
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 191
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v14, "UNISDK_SERVER_PRIVATEPARAM"

    invoke-virtual {v0, v14}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    move-object v14, v0

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getQrCodeParams()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v25

    if-eqz v25, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_11

    move-object/from16 v25, v6

    .line 196
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v10

    const-string v10, "qrCodeParams="

    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v10

    goto :goto_7

    :catch_1
    move-exception v0

    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v6, "\u6570\u636eqrCodeParams json\u89e3\u6790\u9519\u8bef:"

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_10

    .line 204
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 206
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    .line 207
    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_f

    .line 208
    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move/from16 v22, v6

    :cond_f
    move-object/from16 v19, v9

    move-object/from16 v17, v10

    goto :goto_8

    :cond_10
    move-object/from16 v0, v20

    :goto_8
    move-object/from16 v6, v17

    move-object/from16 v9, v19

    goto :goto_9

    :cond_11
    move-object/from16 v25, v6

    move-object/from16 v26, v10

    move-object/from16 v6, v17

    move-object/from16 v23, v18

    move-object/from16 v9, v19

    move-object/from16 v0, v20

    .line 217
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 218
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setUid(Ljava/lang/String;)V

    goto :goto_a

    .line 220
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 223
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/netease/ntunisdk/base/OrderInfo;->setAid(Ljava/lang/String;)V

    goto :goto_b

    .line 225
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    :goto_b
    move/from16 v10, v22

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 228
    invoke-virtual {v2, v9}, Lcom/netease/ntunisdk/base/OrderInfo;->setServerId(Ljava/lang/String;)V

    goto :goto_c

    .line 230
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object v9

    .line 232
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 233
    invoke-virtual {v2, v6}, Lcom/netease/ntunisdk/base/OrderInfo;->setUserName(Ljava/lang/String;)V

    goto :goto_d

    .line 235
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v6

    .line 237
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 238
    invoke-virtual {v2, v14}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfExtInfo(Ljava/lang/String;)V

    goto :goto_e

    .line 240
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v14

    .line 245
    :goto_e
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 254
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "netease_simulator"

    .line 255
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const-string v7, "change netease_simulator paychannel"

    .line 256
    invoke-static {v5, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v7, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v7

    .line 258
    invoke-virtual {v2, v7}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    .line 260
    :cond_17
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "paychannel="

    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    const-string v13, "gameid"

    .line 262
    iget-object v15, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    move-object/from16 v19, v11

    const-string v11, "JF_GAMEID"

    invoke-virtual {v15, v11}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "hostid"

    .line 263
    invoke-virtual {v12, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "login_channel"

    .line 264
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkBase;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "pay_channel"

    .line 265
    invoke-virtual {v12, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "app_channel"

    .line 266
    iget-object v11, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v11}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "platform"

    .line 267
    iget-object v11, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v11}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "sdkuid"

    .line 268
    invoke-virtual {v12, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_version"

    .line 269
    iget-object v9, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v9}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "aid"

    .line 270
    invoke-virtual {v12, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "roleid"

    .line 271
    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "goodsid"

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "goodscount"

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v6

    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "timestamp"

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v17, 0x3e8

    div-long v9, v9, v17

    long-to-int v6, v9

    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getUdid()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 277
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDeviceUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v0, "unknown"

    :cond_18
    move-object v6, v0

    .line 281
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v9, "UDID"

    invoke-virtual {v0, v9, v6}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7

    :try_start_4
    const-string v0, "reset_udid"

    .line 284
    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "udid"

    .line 285
    invoke-virtual {v9, v0, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    .line 287
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_f
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    move-object v0, v6

    :cond_19
    const-string v6, "udid"

    .line 291
    invoke-virtual {v12, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceid"

    .line 292
    iget-object v6, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v9, "DEVICE_ID"

    invoke-virtual {v6, v9}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "source"

    .line 293
    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ext_info"

    .line 294
    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v6, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 300
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v6, "SOURCE_APP_CHANNEL"

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v6, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v8, "SOURCE_PLATFORM"

    invoke-virtual {v6, v8}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1a
    const-string v8, "source_app_channel"

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7

    const-string v10, ""

    if-eqz v9, :cond_1b

    move-object v0, v10

    :cond_1b
    :try_start_6
    invoke-virtual {v12, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "source_platform"

    .line 304
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move-object v6, v10

    :cond_1c
    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdklog"

    .line 306
    iget-object v6, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v6, v6, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/netease/ntunisdk/base/function/f;->a(Landroid/content/Context;Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v6, "UNISDK_SERVER_EXTPARAM"

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 312
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_10

    .line 314
    :cond_1d
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 318
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUnisdkJfExtCid()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 320
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v8, "UNISDK_JF_EXT_CID"

    invoke-virtual {v0, v8}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1f

    const-string v8, "cid"

    .line 323
    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isCartOrder()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->produceCartInfo()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 331
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_22

    const-string v8, "goodscart"

    .line 332
    invoke-virtual {v12, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "goodsid"

    const-string v8, "GAS_GOODS_CART"

    .line 334
    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "goodscount"

    const/4 v8, 0x1

    .line 336
    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_12

    .line 341
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getExtendJson()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_7

    .line 343
    :try_start_7
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 345
    :cond_21
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 347
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_21

    .line 348
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v12, v9, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_11

    :catch_3
    :cond_22
    :goto_12
    :try_start_8
    const-string v0, "wo_app"

    .line 355
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "extra pair for wo_app"

    .line 356
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "feename"

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkPids()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_23

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_23

    const-string v8, "serviceid"

    const-string v9, ","

    .line 360
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    aget-object v0, v0, v9

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_23
    const-string v0, "channelid"

    .line 362
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appversion"

    .line 363
    iget-object v7, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v7, v7, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imei"

    .line 364
    iget-object v7, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v7, v7, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_13

    :cond_24
    const-string v0, "youxiqun_sdk"

    .line 365
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    const-string v8, "SESSION"

    const-string v9, "sessionid"

    if-eqz v0, :cond_25

    .line 366
    :try_start_9
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_13

    :cond_25
    const-string v0, "myapp"

    .line 367
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 368
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "logintype"

    .line 369
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "LOGIN_TYPE"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "paytoken"

    .line 370
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "PAY_TOKEN"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pf"

    .line 371
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "PF"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pfkey"

    .line 372
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "PFKEY"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_13

    :cond_26
    const-string v0, "yixin"

    .line 373
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 374
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channelversion"

    .line 375
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "APP_VERSION"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "yixin channelversion="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "APP_VERSION"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_27
    const-string v0, "zqgame"

    .line 377
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 378
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v7, "CPID"

    invoke-interface {v0, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rolename"

    .line 379
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "USERINFO_NAME"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13

    :cond_28
    const-string v0, "lewu"

    .line 380
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "role_name"

    .line 381
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "USERINFO_NAME"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "server_name"

    .line 382
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "USERINFO_HOSTNAME"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    :cond_29
    :goto_13
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v7, "AAS_HOSTID_REGION"

    invoke-interface {v0, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "AAS_LANGUAGE"

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    const-string v8, "aas_hostid_region"

    .line 389
    invoke-virtual {v12, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    :cond_2a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "aas_language"

    .line 392
    invoke-virtual {v12, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_2b
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {}, Lcom/netease/ntunisdk/base/function/c;->a()Ljava/lang/String;

    move-result-object v7

    .line 399
    iget-object v8, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v8, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getJfPaylMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;

    move-result-object v8

    .line 400
    iget-object v9, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v9, v9, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2c
    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 401
    iget-object v13, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v13, v13, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v11, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getJfPaylMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;

    move-result-object v11

    if-eqz v8, :cond_2d

    if-eqz v11, :cond_2c

    .line 404
    invoke-interface {v8, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_14

    :cond_2d
    move-object v8, v11

    goto :goto_14

    .line 411
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtraJson()Ljava/lang/String;

    move-result-object v9

    .line 412
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2f

    .line 413
    invoke-static {v9}, Lcom/netease/ntunisdk/base/utils/StrUtil;->jsonToStrMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_2f

    .line 415
    invoke-interface {v8, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2f
    if-eqz v8, :cond_34

    .line 418
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_34

    .line 419
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_30
    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_34

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 420
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "client_cny"

    .line 422
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31

    const-string v11, "client_cny"

    .line 423
    invoke-virtual {v12, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_15

    :cond_31
    const-string v14, "client_money"

    .line 424
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_32

    const-string v11, "client_money"

    .line 425
    invoke-virtual {v12, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_15

    :cond_32
    const-string v14, "region"

    .line 426
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33

    move-object v7, v13

    goto :goto_15

    :cond_33
    const-string v14, "order_type"

    .line 428
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    move-object/from16 v23, v13

    goto :goto_15

    :cond_34
    move-object/from16 v8, v23

    const-string v9, "packagename"

    .line 433
    invoke-virtual {v12, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "region"

    .line 434
    invoke-virtual {v12, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "order_type"

    .line 435
    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "operation_code"

    .line 436
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v9, "YY_GAMEID"

    invoke-interface {v7, v9, v10}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v7, "JF_AIM_INFO"

    invoke-interface {v0, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "country"

    .line 439
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "product_region"

    .line 440
    invoke-virtual {v12, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderType(I)V

    const-string v0, "extra"

    .line 442
    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v0, v6

    .line 452
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v0, v7

    const-string v6, "/createorder url=%s, body=%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v6

    const-string v0, "POST"

    .line 455
    iput-object v0, v6, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    move-object/from16 v7, v19

    .line 456
    iput-object v7, v6, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 457
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v6, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    const/4 v8, 0x0

    .line 458
    iput v8, v6, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 459
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    move-object/from16 v8, v26

    .line 460
    iput-object v8, v6, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 461
    new-instance v0, Lcom/netease/ntunisdk/base/JfGas$2;

    move-object/from16 v8, p2

    move-object/from16 v9, v25

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/netease/ntunisdk/base/JfGas$2;-><init>(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;Lcom/netease/ntunisdk/base/OrderInfo;)V

    iput-object v0, v6, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    .line 547
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v8, "JF_LOG_KEY"

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 548
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 549
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 551
    :try_start_a
    iget-object v0, v6, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v16, v8

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    invoke-static/range {v16 .. v21}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->addSecureHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_16

    :catch_4
    move-exception v0

    .line 553
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "hmacSHA256Signature exception:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_16
    invoke-virtual {v6, v8}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    goto :goto_17

    :cond_35
    const-string v0, "JF_CLIENT_KEY empty"

    .line 557
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    const-string v0, "PAY"

    .line 559
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    :try_start_b
    const-string v0, "createOrder_exe"
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6

    move-object/from16 v6, v24

    .line 561
    :try_start_c
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_19

    :catch_5
    move-exception v0

    goto :goto_18

    :catch_6
    move-exception v0

    move-object/from16 v6, v24

    .line 563
    :goto_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :goto_19
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void

    :catch_7
    move-exception v0

    .line 444
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSONException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 446
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    move-object/from16 v3, v21

    .line 447
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 448
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    :catch_8
    const/4 v3, 0x3

    const-string v0, "set ConstProp.USERINFO_HOSTID value must int"

    .line 247
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    const-string v0, "set ConstProp.USERINFO_HOSTID value must int"

    .line 249
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 250
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method private a(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "OrdersEncrypted_"

    const-string v4, "UTF-8"

    const-string v5, "OrdersCreated_"

    const-string v6, "roleid"

    const-string v7, "sn"

    const-string v8, "extraJson:"

    const-string v9, "step"

    .line 659
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v10, "UniSDK JfGas"

    if-eqz v0, :cond_0

    const-string v0, "paychannel empty"

    .line 660
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 663
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v11

    .line 664
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "JfGas queryOrder, sn="

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 668
    :cond_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "queryOrder_in"

    .line 670
    invoke-virtual {v12, v9, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 672
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :goto_0
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v2, v13}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v13, "UNISDK_QUERYORDER_URL"

    invoke-interface {v0, v13}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v15, "query_order"

    move-object/from16 v16, v0

    const-string v0, "/query_order"

    move-object/from16 v17, v12

    const-string v12, "/"

    if-eqz v14, :cond_3

    .line 677
    iget-object v14, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    move-object/from16 v18, v13

    const-string v13, "UNISDK_JF_GAS3_URL"

    invoke-virtual {v14, v13}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 678
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 679
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v13, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 681
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 683
    :cond_2
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :goto_1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_3
    move-object/from16 v18, v13

    :cond_4
    move-object/from16 v13, v16

    .line 690
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfGas3Url()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    move-object/from16 v16, v3

    const/4 v3, 0x0

    if-eqz v14, :cond_5

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 691
    invoke-virtual {v13, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfGas3Url(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v14, "url:order.getJfGas3Url()"

    .line 693
    invoke-static {v10, v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfGas3Url()Ljava/lang/String;

    move-result-object v14

    .line 695
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 696
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 698
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 700
    :cond_6
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :goto_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 706
    :cond_7
    :goto_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ConstProp.UNISDK_QUERYORDER_URL is empty"

    .line 707
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 710
    :cond_8
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v12, "UNISDK_SERVER_KEY"

    invoke-interface {v0, v12}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "netease_simulator"

    move-object/from16 v14, p2

    .line 711
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "change netease_simulator paychannel"

    .line 712
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    move-object v14, v0

    .line 716
    :cond_9
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "paychannel="

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v15, "UIN"

    invoke-interface {v0, v15}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 720
    :cond_a
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "GAS3_UID"

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    move-object v3, v0

    .line 722
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    move-object/from16 p2, v3

    const-string v3, "USERINFO_UID"

    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 723
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    move-object/from16 v22, v13

    const-string v13, "USERINFO_HOSTID"

    invoke-virtual {v0, v13}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 725
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    move-object/from16 v23, v4

    const/4 v4, -0x1

    move-object/from16 v24, v5

    const-string v5, "USERINFO_AID"

    invoke-virtual {v0, v5, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    .line 728
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 730
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    move/from16 v25, v4

    const-string v4, "UNISDK_EXT_INFO"

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    move/from16 v25, v4

    .line 732
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v4

    move-object/from16 v26, v0

    const-string v0, "UNISDK_SERVER_PRIVATEPARAM"

    if-eqz v4, :cond_d

    .line 733
    iget-object v4, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v4, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 734
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_d

    goto :goto_6

    :cond_d
    move-object/from16 v4, v26

    .line 738
    :goto_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 739
    iget-object v4, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v4, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 742
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getQrCodeParams()Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_10

    move-object/from16 v26, v11

    .line 744
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v27, v12

    const-string v12, "qrCodeParams="

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v12

    goto :goto_7

    :catch_1
    move-exception v0

    .line 749
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v11, "\u6570\u636eqrCodeParams json\u89e3\u6790\u9519\u8bef:"

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_11

    .line 752
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 754
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/4 v3, 0x0

    .line 755
    invoke-virtual {v11, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_f

    .line 756
    invoke-virtual {v11, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object v3, v0

    move/from16 v25, v5

    goto :goto_8

    :cond_f
    move-object v3, v0

    goto :goto_8

    :cond_10
    move-object/from16 v26, v11

    move-object/from16 v27, v12

    :cond_11
    move-object/from16 v3, p2

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v5, v21

    .line 762
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 763
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setUid(Ljava/lang/String;)V

    goto :goto_9

    .line 765
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 767
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 768
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/netease/ntunisdk/base/OrderInfo;->setAid(Ljava/lang/String;)V

    goto :goto_a

    .line 770
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    :goto_a
    move/from16 v11, v25

    .line 772
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 773
    invoke-virtual {v2, v5}, Lcom/netease/ntunisdk/base/OrderInfo;->setServerId(Ljava/lang/String;)V

    goto :goto_b

    .line 775
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object v5

    .line 777
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 778
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setUserName(Ljava/lang/String;)V

    goto :goto_c

    .line 780
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    :goto_c
    move-object v12, v0

    .line 782
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 783
    invoke-virtual {v2, v4}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfExtInfo(Ljava/lang/String;)V

    goto :goto_d

    .line 785
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v4

    .line 790
    :goto_d
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    .line 796
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v13, "gameid"

    .line 798
    iget-object v15, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v2, "JF_GAMEID"

    invoke-virtual {v15, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "hostid"

    .line 799
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "login_channel"

    .line 800
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkBase;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pay_channel"

    .line 801
    invoke-virtual {v5, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_channel"

    .line 802
    iget-object v2, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    .line 803
    iget-object v2, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkuid"

    .line 805
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_version"

    .line 806
    iget-object v2, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "aid"

    .line 807
    invoke-virtual {v5, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 808
    invoke-virtual {v5, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "currency"

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "CNY"

    goto :goto_e

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ext_info"

    .line 810
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "state"

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 812
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getUdid()Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_b

    const-string v3, "udid"

    if-eqz v2, :cond_19

    .line 814
    :try_start_4
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDeviceUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v0, "unknown"

    :cond_18
    move-object v2, v0

    .line 818
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v4, "UDID"

    invoke-virtual {v0, v4, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_b

    :try_start_5
    const-string v0, "reset_udid"

    .line 821
    invoke-virtual {v4, v9, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    .line 824
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :goto_f
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v4}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_10

    :cond_19
    move-object/from16 v11, p1

    .line 828
    :goto_10
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 831
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 832
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderEtc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "receipt"

    .line 833
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderEtc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 835
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "sign"

    .line 836
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUnisdkJfExtCid()Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 842
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "UNISDK_JF_EXT_CID"

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    :cond_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "cid"

    .line 845
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 848
    :cond_1d
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v3, "UNISDK_SERVER_MODE"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_b

    const/4 v3, 0x1

    const-string v4, ""

    if-ne v3, v0, :cond_20

    .line 850
    :try_start_7
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1e

    const-string v0, "ConstProp.UNISDK_SERVER_KEY is empty"

    .line 851
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    const-string v13, "sdkmode"

    .line 854
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 855
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/Crypto;->genAESKey()Ljava/lang/String;

    move-result-object v13

    const-string v0, "sdkkey"

    .line 856
    invoke-virtual {v2, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 858
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v8

    move-object/from16 v8, v24

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_b

    move-object/from16 v20, v3

    .line 861
    :try_start_8
    new-instance v3, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_b

    move-object/from16 v26, v9

    const/4 v9, 0x0

    :try_start_9
    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_b

    move-object/from16 v9, v23

    :try_start_a
    invoke-direct {v3, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 862
    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/StrUtil;->jsonToMapSet(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b

    move-object/from16 v21, v5

    goto :goto_13

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    goto :goto_11

    :catch_5
    move-exception v0

    move-object/from16 v26, v9

    :goto_11
    move-object/from16 v9, v23

    .line 864
    :goto_12
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v21, v5

    const-string v5, "jsonToMapSet:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v20

    .line 866
    :goto_13
    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/StrUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "orders_created="

    .line 868
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 871
    iget-object v3, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 872
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 873
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1f

    move-object/from16 v16, v4

    const-string v4, "encrypted"

    .line 874
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_1f
    move-object/from16 v16, v4

    .line 876
    :goto_14
    invoke-interface {v5, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/StrUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    move-object/from16 v4, v27

    .line 879
    :try_start_c
    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/utils/Crypto;->rsaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_b

    .line 888
    :try_start_d
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 889
    invoke-interface {v4, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    invoke-interface {v4, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v23, 0x3e8

    div-long v5, v5, v23

    const-string v7, "timestamp"

    .line 892
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/StrUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b

    .line 895
    :try_start_e
    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v13}, Lcom/netease/ntunisdk/base/utils/Crypto;->aesEncrypt([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    .line 896
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_b

    .line 902
    :try_start_f
    iget-object v5, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 903
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 904
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 905
    invoke-interface {v5, v15, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 906
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_15

    :catch_6
    move-exception v0

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JFGas queryorder, aesEncrypt error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "JFGas queryorder rsaEncrypt error:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    move-object/from16 v20, v2

    move-object/from16 v16, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 911
    :goto_15
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v11}, Lcom/netease/ntunisdk/base/SdkBase;->getJfQueryOrderlMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;

    move-result-object v0

    .line 912
    iget-object v2, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 913
    iget-object v4, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v4, v4, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v3, v11}, Lcom/netease/ntunisdk/base/SdkBase;->getJfQueryOrderlMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;

    move-result-object v3

    if-eqz v0, :cond_22

    if-eqz v3, :cond_21

    .line 916
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_16

    :cond_22
    move-object v0, v3

    goto :goto_16

    :cond_23
    if-eqz v0, :cond_24

    .line 922
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 923
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 924
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v20

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v20, v5

    goto :goto_17

    :cond_24
    move-object/from16 v5, v20

    const-string v0, "operation_code"

    .line 928
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "YY_GAMEID"

    move-object/from16 v4, v16

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 929
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "JF_AIM_INFO"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "country"

    .line 931
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "product_region"

    .line 932
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extra"

    .line 933
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v22, v0, v2

    .line 940
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "/queryorder url=%s, bodyPairs=%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v2

    const-string v0, "POST"

    .line 943
    iput-object v0, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    move-object/from16 v13, v22

    .line 944
    iput-object v13, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 945
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    const/16 v0, 0x14

    .line 946
    iput v0, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 947
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    move-object/from16 v4, v18

    .line 948
    iput-object v4, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 949
    new-instance v0, Lcom/netease/ntunisdk/base/JfGas$4;

    invoke-direct {v0, v1, v11}, Lcom/netease/ntunisdk/base/JfGas$4;-><init>(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/OrderInfo;)V

    iput-object v0, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    .line 982
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v4, "JF_LOG_KEY"

    invoke-interface {v0, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 983
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 984
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 987
    :try_start_10
    iget-object v0, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v19, v4

    move-object/from16 v21, v0

    move-object/from16 v22, v13

    invoke-static/range {v19 .. v24}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->addSecureHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_18

    :catch_8
    move-exception v0

    .line 989
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "hmacSHA256Signature exception:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :goto_18
    invoke-virtual {v2, v4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    goto :goto_19

    :cond_25
    const-string v0, "JF_CLIENT_KEY empty"

    .line 993
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    const-string v0, "PAY"

    .line 995
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResend()V

    .line 996
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    :try_start_11
    const-string v0, "queryOrder_exe"
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_a

    move-object/from16 v2, v17

    move-object/from16 v3, v26

    .line 998
    :try_start_12
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_1b

    :catch_9
    move-exception v0

    goto :goto_1a

    :catch_a
    move-exception v0

    move-object/from16 v2, v17

    .line 1000
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :goto_1b
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void

    :catch_b
    move-exception v0

    .line 935
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryOrder fail, JSONException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_c
    const-string v0, "set ConstProp.USERINFO_HOSTID value must int"

    .line 792
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createOrderTips(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "ENABLE_UNISDK_CREATEORDER_UI"

    const/4 v1, 0x1

    .line 1173
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "1"

    .line 1174
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-ne v1, v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1175
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 1176
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/netease/ntunisdk/base/JfGas$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/netease/ntunisdk/base/JfGas$6;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string p0, "UniSDK JfGas"

    const-string p1, "not createOrderTips"

    .line 1203
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method final b(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 605
    :cond_0
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Lcom/netease/ntunisdk/base/OrderInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    new-instance v0, Lcom/netease/ntunisdk/base/JfGas$3;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/JfGas$3;-><init>(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/JfGas;->queryProduct(Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;)V

    return-void

    .line 653
    :cond_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderChannel()Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void
.end method

.method public createOrder(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;)V
    .locals 1

    .line 46
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Lcom/netease/ntunisdk/base/OrderInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/netease/ntunisdk/base/JfGas$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/base/JfGas$1;-><init>(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/JfGas;->queryProduct(Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;)V

    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderChannel()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;Ljava/lang/String;)V

    return-void
.end method

.method public processWhenJfSuc(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "sn"

    .line 573
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-virtual {p2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    const-string v0, "data"

    .line 575
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 576
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 577
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "etc"

    .line 578
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkOrderId"

    .line 579
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    .line 580
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "consumesn"

    .line 581
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 582
    iget-object v3, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v4, "VIRTUAL_ORDER"

    invoke-virtual {v3, v4}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 583
    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setSdkOrderId(Ljava/lang/String;)V

    .line 585
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 586
    invoke-virtual {p2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderEtc(Ljava/lang/String;)V

    .line 588
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 589
    invoke-virtual {p2, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setSdkOrderId(Ljava/lang/String;)V

    .line 591
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 592
    invoke-virtual {p2, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setSignature(Ljava/lang/String;)V

    :cond_3
    const-string p1, "UniSDK JfGas"

    const-string v0, "/createorder success"

    .line 596
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public queryProduct(Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;)V
    .locals 13

    const-string v0, "extraJson:"

    const-string v1, "step"

    const-string v2, "UniSDK JfGas"

    const-string v3, "JfGas queryProduct"

    .line 1007
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "queryProduct_in"

    .line 1010
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1012
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :goto_0
    iget-object v4, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 1015
    iget-object v4, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v5, "UNISDK_JF_GAS3_URL"

    invoke-virtual {v4, v5}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "ConstProp.UNISDK_JF_GAS3_URL is empty"

    .line 1018
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1020
    invoke-interface {p1}, Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;->callbackResult()V

    :cond_0
    return-void

    .line 1024
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    .line 1025
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1026
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "query_product?platform="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1028
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "/query_product?platform="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1033
    iget-object v5, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    .line 1034
    iget-object v7, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/base/SdkBase;->getPayChannel()Ljava/lang/String;

    move-result-object v7

    .line 1035
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1036
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "+"

    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1040
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&pay_channel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 1042
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UnsupportedEncodingException"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :goto_2
    invoke-static {v4}, Lcom/netease/ntunisdk/base/JfGas;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const-string v7, "/queryProduct url=%s"

    .line 1048
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v4

    const-string v7, "POST"

    .line 1051
    iput-object v7, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 1052
    iput-object v10, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 1053
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v7, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 1054
    iput v5, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 1056
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v7, "UNISDK_SERVER_KEY"

    invoke-interface {v5, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->keyRSA:Ljava/lang/String;

    const-string v5, "UNISD_JF_GAS3_QUERY_PRODUCT"

    .line 1057
    iput-object v5, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 1058
    new-instance v5, Lcom/netease/ntunisdk/base/JfGas$5;

    invoke-direct {v5, p0, p1}, Lcom/netease/ntunisdk/base/JfGas$5;-><init>(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;)V

    iput-object v5, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    .line 1123
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v5, "JF_LOG_KEY"

    invoke-interface {p1, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1124
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1125
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1127
    :try_start_2
    iget-object v9, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    const-string v11, ""

    const/4 v12, 0x1

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->addSecureHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    .line 1129
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hmacSHA256Signature exception:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :goto_3
    invoke-virtual {v4, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    goto :goto_4

    :cond_4
    const-string p1, "JF_CLIENT_KEY empty"

    .line 1133
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string p1, "PAY"

    .line 1135
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    :try_start_3
    const-string p1, "queryProduct_exe"

    .line 1137
    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    :goto_5
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void
.end method
