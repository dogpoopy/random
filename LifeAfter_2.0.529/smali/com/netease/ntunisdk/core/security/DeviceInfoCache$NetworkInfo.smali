.class public Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/security/DeviceInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInfo"
.end annotation


# instance fields
.field public final getDetailedState:Ljava/lang/String;

.field public final getExtraInfo:Ljava/lang/String;

.field public final getSubtype:I

.field public final getSubtypeName:Ljava/lang/String;

.field public final getType:I

.field public final getTypeName:Ljava/lang/String;

.field public final isAvailable:Z

.field public final isConnected:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;ZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->getType:I

    iput-object p2, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->getTypeName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->isConnected:Z

    iput-boolean p4, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->isAvailable:Z

    iput-object p5, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->getDetailedState:Ljava/lang/String;

    iput p6, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->getSubtype:I

    iput-object p7, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->getSubtypeName:Ljava/lang/String;

    iput-object p8, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->getExtraInfo:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "respCode"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;

    const-string v2, "getType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v2, "getTypeName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "isConnected"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v2, "isAvailable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v2, "getDetailedState"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "getSubtype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "getSubtypeName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "getExtraInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;-><init>(ILjava/lang/String;ZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->logStacktrace(Ljava/lang/Throwable;)V

    return-object v0
.end method
