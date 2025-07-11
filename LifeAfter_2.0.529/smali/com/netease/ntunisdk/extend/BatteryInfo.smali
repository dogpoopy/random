.class public Lcom/netease/ntunisdk/extend/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"

# interfaces
.implements Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;
    }
.end annotation


# static fields
.field private static final METHODIS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BatteryInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DeviceBatteryState"

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lcom/netease/ntunisdk/extend/BatteryInfo;->METHODIS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "BatteryInfo"

    const-string v1, "getBatteryIntent"

    .line 77
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private getBatteryLevel(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "BatteryInfo"

    const-string v1, "getBatteryLevel"

    .line 99
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "level"

    .line 100
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    .line 101
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 v1, v1, 0x64

    int-to-float v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-double v0, v0

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private getBatteryState(Landroid/content/Intent;)Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;
    .locals 2

    const-string v0, "BatteryInfo"

    const-string v1, "getBatteryState"

    .line 83
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status"

    const/4 v1, -0x1

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 94
    sget-object p1, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->UNKNOWN:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    return-object p1

    .line 89
    :cond_0
    sget-object p1, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->FULL:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    return-object p1

    .line 91
    :cond_1
    sget-object p1, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->UNPLUGGED:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    return-object p1

    .line 87
    :cond_2
    sget-object p1, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->CHARGING:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    return-object p1
.end method


# virtual methods
.method public extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 4

    const-string v0, "methodId"

    const-string v1, "BatteryInfo"

    const-string v2, "DeviceBatteryState"

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendFunc: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p4}, Lcom/netease/ntunisdk/extend/BatteryInfo;->getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "getBatteryInfo"

    .line 50
    invoke-static {v1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/extend/BatteryInfo;->getBatteryLevel(Landroid/content/Intent;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/extend/BatteryInfo;->getBatteryState(Landroid/content/Intent;)Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    move-result-object p1

    .line 53
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 54
    invoke-virtual {p4, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "level"

    .line 55
    invoke-virtual {p4, v3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "state"

    .line 56
    iget-object v3, p1, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->code:Ljava/lang/String;

    invoke-virtual {p4, p2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "state_desc"

    .line 57
    iget-object p1, p1, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->describe:Ljava/lang/String;

    invoke-virtual {p4, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    sget-object p1, Lcom/netease/ntunisdk/ExtendCode;->SUCCESS:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p4, p1}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extendFuncCall: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 65
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    sget-object p4, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p2, p4}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 67
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getMethodIds()[Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/ntunisdk/extend/BatteryInfo;->METHODIS:[Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onResume(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 0

    return-void
.end method
