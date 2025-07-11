.class public Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;
.super Lcom/netease/ntunisdk/modules/base/BaseModules;
.source "DeviceInfoModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;
    }
.end annotation


# static fields
.field public static final DISABLE_ACCESS_DATA:Ljava/lang/String; = "DISABLE_ACCESS_DATA"

.field public static final EB:Ljava/lang/String; = "EB"

.field public static final ENABLE_FAKE_ABOUT_ID:Ljava/lang/String; = "ENABLE_FAKE_ABOUT_ID"

.field private static final MODEL_NAME:Ljava/lang/String; = "deviceInfo"

.field public static final NO_ANDROIDID:Ljava/lang/String; = "NO_ANDROIDID"

.field private static final TAG:Ljava/lang/String; = "UNISDK DeviceInfoModule"

.field private static final VERSION:Ljava/lang/String; = "1.5.0"

.field public static disableAccessData:Z


# instance fields
.field private enableFake:Z

.field private hasRefreshData:Z

.field private hasRequestGaid:Z

.field public isOversea:Z

.field private networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

.field private noAndroidId:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/modules/base/BaseModules;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRequestGaid:Z

    .line 33
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRefreshData:Z

    .line 50
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    .line 51
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    .line 52
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->isOversea:Z

    const/4 p2, 0x0

    .line 57
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->readLibraryConfig()V

    .line 63
    iget-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRequestGaid:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    if-nez p2, :cond_0

    .line 64
    invoke-static {p1, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->requestGaid(Landroid/content/Context;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V

    const/4 p2, 0x1

    .line 65
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRequestGaid:Z

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->registerNetworkReceiver()V

    .line 68
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->judgeReqLocation(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDeviceBaseInfo(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 300
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imei"

    .line 303
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isNoAndroidId"

    .line 304
    iget-boolean v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "isFake"

    .line 305
    iget-boolean v3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 306
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getDeviceUDID(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v3, "udid"

    .line 307
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getTransid(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v3, "transId"

    .line 309
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getUnisdkDeviceId(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unisdkDeviceId"

    .line 311
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "localIpAddress"

    .line 313
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 315
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 317
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private judgeReqLocation(Landroid/content/Context;)V
    .locals 2

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 73
    sput-boolean p1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isReqLocation:Z

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "judgeReqLocation isReqLocation = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isReqLocation:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UNISDK DeviceInfoModule"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readLibraryConfig()V
    .locals 9

    const-string v0, "1"

    const-string v1, "0"

    const-string v2, "UNISDK DeviceInfoModule"

    const-string v3, "ntunisdk_config"

    .line 81
    iget-object v4, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 85
    :try_start_0
    invoke-virtual {v4, v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v7, "fail to read ntunisdk_config, try ntunisdk.cfg"

    .line 88
    invoke-static {v2, v7}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    :goto_0
    if-nez v7, :cond_0

    :try_start_1
    const-string v3, "ntunisdk.cfg"

    .line 94
    invoke-virtual {v4, v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_1
    if-nez v7, :cond_2

    const-string v4, "ntunisdk_config/ntunisdk.cfg null"

    .line 97
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    .line 113
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void

    .line 100
    :cond_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_4

    if-eqz v7, :cond_3

    .line 113
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    return-void

    .line 104
    :cond_4
    :try_start_5
    new-array v4, v4, [B

    .line 105
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    .line 107
    new-instance v5, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v5, v4, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_6

    .line 113
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    nop

    goto :goto_2

    :catch_4
    :try_start_7
    const-string v4, "ntunisdk_config/ntunisdk.cfg config not found"

    .line 109
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_5

    .line 113
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_5
    move-object v5, v6

    :cond_6
    :goto_2
    if-nez v5, :cond_7

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_7
    invoke-static {v2, v5}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "\uff1a"

    .line 127
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u201c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u201d"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 128
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_9
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 134
    :try_start_9
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "NO_ANDROIDID"

    .line 135
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    .line 137
    iput-boolean v5, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noAndroidId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v4, "ENABLE_FAKE_ABOUT_ID"

    .line 140
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 142
    iput-boolean v5, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableFake:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v4, "EB"

    .line 145
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 147
    iput-boolean v5, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->isOversea:Z

    .line 148
    sput-boolean v5, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isOversea:Z

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOversea:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->isOversea:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v4, "DISABLE_ACCESS_DATA"

    .line 151
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 153
    sput-boolean v5, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableAccessData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    :catch_6
    const-string v0, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    .line 157
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void

    :goto_4
    if-eqz v7, :cond_e

    .line 113
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 117
    :catch_7
    :cond_e
    throw v0
.end method

.method private registerNetworkReceiver()V
    .locals 4

    const-string v0, "UNISDK DeviceInfoModule"

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    if-nez v1, :cond_0

    const-string v1, "register NetworkStateReceiver..."

    .line 354
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;-><init>(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    .line 356
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 357
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register NetworkStateReceiver error, message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setEnableFake(Lorg/json/JSONObject;)V
    .locals 2

    .line 327
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    const-string v1, "isFake"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableFake:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UNISDK DeviceInfoModule"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 176
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "methodId"

    .line 177
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "setImei"

    .line 178
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, ""

    if-eqz p3, :cond_0

    :try_start_1
    const-string p2, "imei"

    .line 179
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setImei(Ljava/lang/String;)V

    return-object p4

    :cond_0
    const-string p3, "setImsi"

    .line 182
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p2, "imsi"

    .line 183
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setImsi(Ljava/lang/String;)V

    return-object p4

    :cond_1
    const-string p3, "setAndroidId"

    .line 186
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p2, "androidId"

    .line 187
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setAndroidId(Ljava/lang/String;)V

    return-object p4

    :cond_2
    const-string p3, "setMacAddress"

    .line 190
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p2, "macAddress"

    .line 191
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setMacAddress(Ljava/lang/String;)V

    return-object p4

    :cond_3
    const-string p3, "setTimeZone"

    .line 194
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p2, "timeZone"

    .line 195
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setTimeZone(Ljava/lang/String;)V

    return-object p4

    :cond_4
    const-string p3, "setTimeArea"

    .line 198
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p2, "timeArea"

    .line 199
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setTimeArea(Ljava/lang/String;)V

    return-object p4

    :cond_5
    const-string p3, "setMinorStatus"

    .line 202
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p2, "status"

    .line 203
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "101"

    .line 204
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    .line 205
    sput-boolean v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    .line 206
    sput-boolean p3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->hasRefreshWifiList:Z

    goto :goto_0

    :cond_6
    const-string p2, "102"

    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 208
    sput-boolean p3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    .line 209
    iget-boolean p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRequestGaid:Z

    if-nez p1, :cond_7

    .line 210
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->requestGaid(Landroid/content/Context;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V

    .line 211
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRequestGaid:Z

    .line 213
    :cond_7
    iget-boolean p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRefreshData:Z

    if-nez p1, :cond_8

    .line 214
    sput-boolean v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->hasRefreshWifiList:Z

    .line 215
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRefreshData:Z

    :cond_8
    :goto_0
    return-object p4

    :cond_9
    const-string p3, "getSerial"

    .line 219
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 220
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const-string p3, "getImei"

    .line 221
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 222
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p3, "getImsi"

    .line 223
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 224
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getMobileIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p3, "getTransId"

    .line 225
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "isFake"

    const-string v1, "isNoAndroidId"

    if-eqz p3, :cond_d

    .line 226
    :try_start_2
    iget-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 227
    iget-boolean p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 228
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getTransid(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p3, "getUDID"

    .line 229
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 230
    iget-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 231
    iget-boolean p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 232
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getDeviceUDID(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const-string p3, "getUnisdkDeviceId"

    .line 233
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 234
    iget-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 235
    iget-boolean p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 236
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getUnisdkDeviceId(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const-string p3, "getAndroidId"

    .line 237
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 238
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    const-string p3, "getMacAddress"

    .line 239
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 240
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    const-string p3, "getLocalIpAddress"

    .line 241
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 242
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const-string p3, "getDeviceBaseInfo"

    .line 243
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 244
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->getDeviceBaseInfo(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const-string p3, "getTimeZone"

    .line 245
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 246
    invoke-static {}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getTimeZone()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    const-string p3, "getAreaZone"

    .line 247
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 248
    invoke-static {}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAreaZone()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const-string p3, "getCellId"

    .line 249
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 250
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getCellId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const-string p3, "getWifiSignal"

    .line 251
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 252
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getWifiSignal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_17
    const-string p3, "getGateWay"

    .line 253
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 254
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getGateWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    const-string p3, "getNetworkType"

    .line 255
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 256
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    const-string p3, "getNetworkType2"

    .line 257
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "reacquire"

    if-eqz p3, :cond_1a

    .line 258
    :try_start_3
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getNetworkType2(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string p3, "getNetworkType4Downloader"

    .line 259
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 260
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getNetworkType4Downloader(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string p3, "ntGetNetworktype"

    .line 261
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 262
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->ntGetNetworktype(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1c
    const-string p3, "getNetworkInfoJson"

    .line 263
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 264
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getNetworkInfoJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    const-string p3, "getSystemLanguage"

    .line 265
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 266
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getSystemLanguage(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string p3, "getSimCountryIso"

    .line 267
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 268
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getSimCountryIso(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    const-string p3, "setFake"

    .line 269
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 270
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->setEnableFake(Lorg/json/JSONObject;)V

    return-object p4

    :cond_20
    const-string p3, "getWifiListJson"

    .line 272
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 273
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getWifiListJson(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    const-string p3, "getAppVersionCode"

    .line 274
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 275
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_22
    const-string p3, "getAppVersionName"

    .line 276
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_23

    .line 277
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    const-string p3, "getOsVer"

    .line 278
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_24

    .line 279
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getOsVer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    const-string p3, "getMobileType"

    .line 280
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_25

    .line 281
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getMobileType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    const-string p3, "getAppFilesCacheDir"

    .line 282
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_26

    .line 283
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppFilesCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_26
    const-string p3, "getFirstDeviceId"

    .line 284
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_27

    .line 285
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getFirstDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    const-string p3, "getAppSetID"

    .line 286
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_28

    .line 287
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p2, p1, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppSetID(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V

    return-object p4

    :cond_28
    const-string p3, "getAppOccupiedStorage"

    .line 289
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 290
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p2, p1, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppOccupiedStorage(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p4

    :catch_0
    move-exception p1

    .line 294
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_29
    const-string p1, "unknow"

    return-object p1
.end method

.method public gaidCallback(Ljava/lang/String;)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gaidCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNISDK DeviceInfoModule"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "native"

    const-string v1, "unisdkbase"

    .line 323
    invoke-virtual {p0, v0, v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceInfo"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.0"

    return-object v0
.end method

.method public onCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 396
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "UNISDK DeviceInfoModule"

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 342
    iput-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    const-string v2, "unregister NetworkStateReceiver..."

    .line 343
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sput-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister NetworkStateReceiver error, message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->registerNetworkReceiver()V

    return-void
.end method
