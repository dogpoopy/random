.class public abstract Lcom/netease/ntunisdk/base/SdkApplication;
.super Ljava/lang/Object;
.source "SdkApplication.java"


# instance fields
.field private final a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected myCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    const-string v0, "UniSDK SdkApplication"

    const-string v1, "SdkApplication construct"

    .line 34
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkApplication;->myCtx:Landroid/content/Context;

    const-string v1, "ntunisdk_config"

    .line 1250
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 1254
    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "fail to read ntunisdk_config, try ntunisdk.cfg"

    .line 1257
    invoke-static {v0, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    :goto_0
    const-string v6, "\u201d"

    const-string v7, "\u201c"

    const-string v8, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    const-string v9, " is null"

    const-string v10, "\uff1a"

    const-string v11, "UTF-8"

    const/4 v12, 0x0

    if-nez v5, :cond_0

    :try_start_1
    const-string v1, "ntunisdk.cfg"

    .line 1263
    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    :goto_1
    if-nez v5, :cond_1

    const-string v2, "ntunisdk_config/ntunisdk.cfg null"

    .line 1266
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_8

    .line 1282
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_4

    .line 1269
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz v5, :cond_8

    goto :goto_2

    .line 1273
    :cond_2
    new-array v2, v2, [B

    .line 1274
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 1276
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    .line 1282
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    nop

    goto :goto_3

    :catch_2
    :try_start_5
    const-string v2, "ntunisdk_config/ntunisdk.cfg config not found"

    .line 1278
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_3

    .line 1282
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_3
    move-object v13, v4

    :cond_4
    :goto_3
    if-nez v13, :cond_5

    .line 1289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1292
    :cond_5
    invoke-static {v0, v13}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v13, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v13, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1297
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :cond_7
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v13}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 1303
    :try_start_7
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "EB"

    .line 1304
    invoke-virtual {p0, v1, v2, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "NO_ANDROIDID"

    .line 1305
    invoke-virtual {p0, v1, v2, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    const-string v1, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    .line 1308
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :catch_5
    :cond_8
    :goto_4
    const-string v1, "ntunisdk_common_data"

    .line 2197
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "ntunisdk_common_data null"

    .line 2199
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2202
    :cond_9
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_7

    .line 2206
    :cond_a
    new-array v3, v3, [B

    .line 2207
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 2209
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move-object v4, v2

    goto :goto_5

    :catch_6
    const-string v2, "ntunisdk_common_data config not found"

    .line 2212
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-nez v4, :cond_b

    .line 2216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2219
    :cond_b
    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2224
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    :cond_d
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 2230
    :try_start_9
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 2231
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getAppChannel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2232
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2233
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    const-string v4, "APP_CHANNEL"

    if-nez v3, :cond_e

    .line 2234
    :try_start_a
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2236
    :cond_e
    invoke-virtual {p0, v1, v4, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_f
    :goto_6
    const-string v2, "JF_GAMEID"

    .line 2239
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    :catch_7
    const-string v1, "ntunisdk_common_data config parse to json error"

    .line 2241
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_7
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->readConfig(Landroid/content/Context;)V

    return-void

    :goto_8
    if-eqz v5, :cond_10

    .line 1282
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 1286
    :catch_8
    :cond_10
    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "UniSDK SdkApplication"

    .line 167
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 171
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "no tag:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doConfigVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 178
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APP_CHANNEL:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "APP_CHANNEL"

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UniSDK SdkApplication"

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChannel()Ljava/lang/String;
.end method

.method public getPropInt(Ljava/lang/String;I)I
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 147
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleOnApplicationAttachBaseContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationAttachBaseContext(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationConfigurationChanged(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationLowMemory(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationTerminate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationTrimMemory(Landroid/content/Context;Landroid/app/Application;I)V
    .locals 0

    return-void
.end method

.method protected readConfig(Landroid/content/Context;)V
    .locals 8

    const-string v0, "UNISDK_SERVER_KEY"

    const-string v1, "UTF-8"

    const-string v2, " is empty"

    const-string v3, "UniSDK SdkApplication"

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    .line 318
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_0

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_0
    new-array v6, v6, [B

    .line 324
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    .line 325
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " read exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 329
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 336
    :try_start_1
    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/StrUtil;->isBase64(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 337
    new-instance v6, Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    goto :goto_1

    :catch_1
    move-exception v1

    .line 341
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    const-string p1, " null jsonStr"

    .line 345
    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v1, "\uff1a"

    .line 350
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "\u201c"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "\u201d"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 351
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_5
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 357
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 358
    invoke-virtual {p0, v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->setKey(Ljava/lang/String;)V

    const-string v0, "GAMEID"

    .line 360
    invoke-virtual {p0, v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "APP_KEY"

    .line 361
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APP_SECRET"

    .line 362
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APPID"

    .line 363
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APP_NAME"

    .line 364
    invoke-virtual {p0, v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "APP_LOCATION"

    .line 365
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APP_VERSION"

    .line 366
    invoke-virtual {p0, v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "SCR_ORIENTATION"

    .line 367
    invoke-virtual {p0, v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "CPID"

    .line 368
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "CP_KEY"

    .line 369
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SERVER_ID"

    .line 370
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "PAY_CB_URL"

    .line 371
    invoke-virtual {p0, v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "RSA_PRIVATE"

    .line 372
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "RSA_PUBLIC"

    .line 373
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SDK_UPDATE_CHECK_STRICT"

    .line 374
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "BUOY_PRIVATEKEY"

    .line 375
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "USER_ID"

    .line 376
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "PACKET_ID"

    .line 377
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "EXCHANGE_RATE"

    .line 378
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "EXCHANGE_UNIT"

    .line 379
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "CHANNEL_ID"

    .line 380
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SPLASH"

    .line 381
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SPLASH_TIME"

    .line 382
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SPLASH_COLOR"

    .line 383
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SPLASH_SECOND"

    .line 384
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "DEBUG_MODE"

    .line 385
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 387
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v4, "APP_CHANNEL"

    if-nez v0, :cond_6

    .line 389
    :try_start_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 391
    :cond_6
    invoke-virtual {p0, v1, v4, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_7
    :goto_2
    const-string p1, "LAUNCHER_NAME"

    .line 394
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "APPSFLYER_DEV_KEY"

    .line 395
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ADVERTISER_APPID"

    .line 396
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "TIMELINE_KEY"

    .line 397
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "PLATFORM_KEY"

    .line 398
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "GAME_REGION"

    .line 399
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CN"

    .line 400
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "AS"

    .line 401
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "US"

    .line 402
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SA"

    .line 403
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "GAME_ENGINE"

    .line 404
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CC_SHOW_FPS_SETTING"

    .line 405
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CC_DEFAULT_FPS"

    .line 406
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "PAYTYPE"

    .line 407
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "PAYCODE"

    .line 408
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "MONTHTYPE"

    .line 409
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "LIANYUN"

    .line 410
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SINGLE_CB"

    .line 411
    invoke-virtual {p0, v1, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "DK_APPID"

    .line 412
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DK_APP_KEY"

    .line 413
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SHARE_QQ_API"

    .line 414
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SHARE_WEIBO_API"

    .line 415
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SHARE_WEIXIN_API"

    .line 416
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SHARE_YIXIN_API"

    .line 417
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_EXLOGIN_GUEST"

    .line 418
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_EXLOGIN_WEIBO"

    .line 419
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_EXLOGIN_MOBILE"

    .line 420
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_EXLOGIN_GOOGLEPLUS"

    .line 421
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DATA_REPORT_MODE"

    .line 422
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "GAME_NAME"

    .line 423
    invoke-virtual {p0, v1, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "RETRIEVE_USER"

    .line 424
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DOMAIN"

    .line 425
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "QQ_APPID"

    .line 426
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "QQ_APP_KEY"

    .line 427
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "WX_APPID"

    .line 428
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "WX_APP_KEY"

    .line 429
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "WEIBO_SSO_APP_KEY"

    .line 430
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "WEIBO_SSO_URL"

    .line 431
    invoke-virtual {p0, v1, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "OFFER_ID"

    .line 432
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "VERIFY_MODE"

    .line 433
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "REQUEST_UNISDK_SERVER"

    .line 434
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_CREATEORDER_URL"

    .line 435
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_QUERYORDER_URL"

    .line 436
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_CONSUMEORDER_URL"

    .line 437
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "LANGUAGE_CODE"

    .line 438
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "COUNTRY_CODE"

    .line 439
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "PURCHASE_REG_SERVER"

    .line 440
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SPLASH_TYPE"

    .line 441
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "REQUEST_CMCC_PAYTYPE"

    .line 442
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DEFAULT_CMCC_PAYTYPE"

    .line 443
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "GAME_VERSION"

    .line 444
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DERIVE_CHANNEL"

    .line 445
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CMCC_PAYTYPE_URL"

    .line 446
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "JF_LOG_KEY"

    .line 447
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "JF_OPEN_LOG_URL"

    .line 448
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "JF_PAY_LOG_URL"

    .line 449
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "JF_GAMEID"

    .line 450
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "HAS_PAY_CB"

    .line 451
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "NEED_PLAY_GAME_SERVICE"

    .line 452
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_SERVER_URL"

    .line 453
    invoke-virtual {p0, v1, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "ENABLE_UNISDK_GUEST_DISCONNECT"

    .line 454
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_UNISDK_GUEST_UI"

    .line 455
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "FLOATBTN_CLOSED"

    .line 456
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "FLOAT_BTN_POS"

    .line 457
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UPDATE_CHECK_URL"

    .line 458
    invoke-virtual {p0, v1, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "UPDATE_DOWNLOAD_URL"

    .line 459
    invoke-virtual {p0, v1, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "UNISDK_SERVER_MODE"

    .line 460
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_SERVER_EXTPARAM"

    .line 461
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_EXT_INFO"

    .line 462
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CODE_SCANNER_PAY_URL"

    .line 463
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_TV"

    .line 464
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "EXTERNAL_OP_LIST"

    .line 465
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_JF_GAS3"

    .line 466
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_JF_GAS3_WEB"

    .line 467
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_JF_GAS3_URL"

    .line 468
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SKIN_TYPE"

    .line 469
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "FLOW_CODE"

    .line 470
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "FLOW_KEY"

    .line 471
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doSepcialConfigVal(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    .line 476
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_data config parse to json error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "val:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkApplication"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
