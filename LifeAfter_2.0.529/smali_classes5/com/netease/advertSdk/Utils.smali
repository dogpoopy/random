.class public Lcom/netease/advertSdk/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final HTTP_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final PROTOCOL_AREA_KOREA:I = 0x4

.field private static final PROTOCOL_LAUNCHER_KOREA_VERSION:I = 0x1d6

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static propDict:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/netease/advertSdk/Utils;->propDict:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAccessData()Z
    .locals 2

    const-string v0, "disableAccessData"

    .line 98
    invoke-static {v0}, Lcom/netease/advertSdk/Utils;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 191
    invoke-static {p0, p1, v0}, Lcom/netease/advertSdk/Utils;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method protected static doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 1

    .line 196
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    .line 207
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 210
    :cond_1
    invoke-static {p1, p0}, Lcom/netease/advertSdk/Utils;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 215
    sget-object v0, Lcom/netease/advertSdk/Utils;->propDict:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/netease/advertSdk/Utils;->propDict:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUnisdkDeviceId(Z)Ljava/lang/String;
    .locals 3

    .line 230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "getUDID"

    .line 232
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isNoAndroidId"

    .line 233
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 237
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appsflyer"

    const-string v2, "deviceInfo"

    invoke-virtual {p0, v1, v2, v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static hasCmp()Z
    .locals 2

    :try_start_0
    const-string v0, "com.netease.ntunisdk.SdkConsentManager"

    .line 101
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "Utils"

    const-string v1, "no cmp"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isGaidMust()Z
    .locals 2

    const-string v0, "isGaidMust"

    .line 95
    invoke-static {v0}, Lcom/netease/advertSdk/Utils;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGameDMA()Z
    .locals 2

    const-string v0, "gameDma"

    .line 97
    invoke-static {v0}, Lcom/netease/advertSdk/Utils;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKoreaProtocolLauncher(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 110
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 112
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "protocolPublishArea"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 113
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "protocolVersion"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x4

    if-ne v2, v1, :cond_0

    const/16 v1, 0x1d6

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    const-string p0, "Utils"

    const-string v1, "no KoreaProtocolLauncher"

    .line 116
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static readConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "UNISDK_SERVER_KEY"

    const-string v1, "UTF-8"

    const-string v2, "Utils"

    const-string v3, "readConfig"

    .line 127
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v4, " is empty"

    if-nez v3, :cond_0

    .line 134
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_0
    new-array v3, v3, [B

    .line 138
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 139
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 153
    :try_start_2
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->isBase64(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    new-instance v4, Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const-string v1, "\uff1a"

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u201c"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u201d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 171
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 172
    invoke-static {p0, v0, v3}, Lcom/netease/advertSdk/Utils;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 173
    invoke-static {v0}, Lcom/netease/advertSdk/Utils;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->setKey(Ljava/lang/String;)V

    const-string v0, "APPSFLYER_DEV_KEY"

    .line 176
    invoke-static {p0, v0}, Lcom/netease/advertSdk/Utils;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APPSFLYER_CURRENCY_CODE"

    .line 177
    invoke-static {p0, v0}, Lcom/netease/advertSdk/Utils;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "INIT_NOT_CUID"

    .line 178
    invoke-static {p0, v0}, Lcom/netease/advertSdk/Utils;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "TEMPLATE_ID"

    .line 179
    invoke-static {p0, v0}, Lcom/netease/advertSdk/Utils;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "PRE_INSTALL_ATTRIBUTION"

    .line 180
    invoke-static {p0, v0}, Lcom/netease/advertSdk/Utils;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "DEBUG_MODE"

    .line 182
    invoke-static {p0, v0}, Lcom/netease/advertSdk/Utils;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 186
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " config parse to json error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 141
    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " read exception"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readNtunisdkConfig(Landroid/content/Context;)V
    .locals 8

    const-string v0, "Utils"

    const-string v1, "ntunisdk_config"

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v2, 0x3

    .line 41
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "fail to read ntunisdk_config, try ntunisdk.cfg"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    const-string v3, "ntunisdk.cfg"

    .line 50
    invoke-virtual {p0, v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_1
    if-nez v1, :cond_2

    const-string p0, "ntunisdk_config/ntunisdk.cfg null"

    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 87
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void

    .line 58
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "0 == index"

    .line 60
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 87
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    return-void

    .line 64
    :cond_4
    :try_start_5
    new-array p0, p0, [B

    .line 65
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    .line 66
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 67
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p0, Lorg/json/JSONTokener;

    invoke-direct {p0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 71
    :try_start_6
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const-string v2, "NO_ANDROIDID"

    .line 72
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "DISABLE_ACCESS_DATA"

    .line 73
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "GAME_DMA"

    .line 74
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const-string v4, "isGaidMust"
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v5, "1"

    const-string v6, "0"

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object v2, v5

    goto :goto_2

    :cond_5
    move-object v2, v6

    .line 75
    :goto_2
    :try_start_7
    invoke-static {v4, v2}, Lcom/netease/advertSdk/Utils;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "disableAccessData"

    if-ne v3, v7, :cond_6

    move-object v3, v5

    goto :goto_3

    :cond_6
    move-object v3, v6

    .line 76
    :goto_3
    invoke-static {v2, v3}, Lcom/netease/advertSdk/Utils;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gameDma"

    if-ne p0, v7, :cond_7

    goto :goto_4

    :cond_7
    move-object v5, v6

    .line 77
    :goto_4
    invoke-static {v2, v5}, Lcom/netease/advertSdk/Utils;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catch_3
    :try_start_8
    const-string p0, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    if-eqz v1, :cond_8

    .line 87
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_4
    :try_start_a
    const-string p0, "ntunisdk_config/ntunisdk.cfg config not found"

    .line 83
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_8

    goto :goto_6

    :catch_5
    :cond_8
    :goto_7
    return-void

    :goto_8
    if-eqz v1, :cond_9

    .line 87
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 91
    :catch_6
    :cond_9
    goto :goto_a

    :goto_9
    throw p0

    :goto_a
    goto :goto_9
.end method

.method public static setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 223
    sget-object p1, Lcom/netease/advertSdk/Utils;->propDict:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_0
    sget-object v0, Lcom/netease/advertSdk/Utils;->propDict:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
