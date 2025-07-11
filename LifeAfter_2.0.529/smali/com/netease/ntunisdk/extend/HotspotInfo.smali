.class public Lcom/netease/ntunisdk/extend/HotspotInfo;
.super Landroid/content/BroadcastReceiver;
.source "HotspotInfo.java"

# interfaces
.implements Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;
    }
.end annotation


# static fields
.field private static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field private static final METHODIS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HotspotInfo"

.field private static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field private static final WIFI_AP_STATE_DISABLED_CODE:I = 0xb

.field private static final WIFI_AP_STATE_ENABLED_CODE:I = 0xd

.field private static final WIFI_AP_STATE_UNKNOWN_CODE:I = 0xe

.field private static volatile hotspotInfo:Lcom/netease/ntunisdk/extend/HotspotInfo;

.field private static volatile hotspotState:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

.field private static volatile isRegister:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    sget-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->WIFI_AP_STATE_UNKNOWN:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    sput-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo;->hotspotState:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "HotspotState"

    aput-object v2, v0, v1

    .line 53
    sput-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo;->METHODIS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/extend/HotspotInfo;
    .locals 2

    .line 30
    sget-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo;->hotspotInfo:Lcom/netease/ntunisdk/extend/HotspotInfo;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/netease/ntunisdk/extend/HotspotInfo;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/extend/HotspotInfo;->hotspotInfo:Lcom/netease/ntunisdk/extend/HotspotInfo;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/netease/ntunisdk/extend/HotspotInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/extend/HotspotInfo;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/extend/HotspotInfo;->hotspotInfo:Lcom/netease/ntunisdk/extend/HotspotInfo;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo;->hotspotInfo:Lcom/netease/ntunisdk/extend/HotspotInfo;

    return-object v0
.end method


# virtual methods
.method public extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 5

    const-string p4, "methodId"

    const-string v0, "extendFunc: "

    const-string v1, "HotspotInfo"

    const-string v2, "HotspotState"

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "getHotspotState"

    .line 67
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 69
    invoke-virtual {p1, p4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "state"

    .line 70
    sget-object v4, Lcom/netease/ntunisdk/extend/HotspotInfo;->hotspotState:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    iget v4, v4, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "state_desc"

    .line 71
    sget-object v4, Lcom/netease/ntunisdk/extend/HotspotInfo;->hotspotState:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    iget-object v4, v4, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->describe:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    sget-object v3, Lcom/netease/ntunisdk/ExtendCode;->SUCCESS:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p1, v3}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extendFuncCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 79
    invoke-virtual {p2, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    sget-object p4, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p2, p4}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 81
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
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

    .line 59
    sget-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo;->METHODIS:[Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "HotspotInfo"

    .line 144
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wifi_state"

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    .line 149
    sget-object p2, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->WIFI_AP_STATE_ENABLED:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    sput-object p2, Lcom/netease/ntunisdk/extend/HotspotInfo;->hotspotState:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    const-string p2, "open"

    .line 150
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    .line 152
    sget-object p2, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->WIFI_AP_STATE_DISABLED:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    sput-object p2, Lcom/netease/ntunisdk/extend/HotspotInfo;->hotspotState:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    const-string p2, "close"

    .line 153
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive throw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/extend/HotspotInfo;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 4

    const-string v0, "HotspotInfo"

    .line 107
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/extend/HotspotInfo;->getInstance()Lcom/netease/ntunisdk/extend/HotspotInfo;

    move-result-object v1

    const-string v2, "start register hotpointReceiver"

    .line 108
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-boolean v2, Lcom/netease/ntunisdk/extend/HotspotInfo;->isRegister:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 110
    sput-boolean v2, Lcom/netease/ntunisdk/extend/HotspotInfo;->isRegister:Z

    .line 111
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 112
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "register hotpointReceiver success"

    .line 115
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "hotpointReceiver already registered"

    .line 117
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register hotpointReceiver throw Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 3

    const-string v0, "HotspotInfo"

    .line 126
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/extend/HotspotInfo;->getInstance()Lcom/netease/ntunisdk/extend/HotspotInfo;

    move-result-object v1

    const-string v2, "start unregister hotpointReceiver"

    .line 127
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-boolean v2, Lcom/netease/ntunisdk/extend/HotspotInfo;->isRegister:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 129
    sput-boolean v2, Lcom/netease/ntunisdk/extend/HotspotInfo;->isRegister:Z

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "unregister hotpointReceiver success"

    .line 131
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "hotpointReceiver already unregistered"

    .line 133
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister hotpointReceiver throw Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
