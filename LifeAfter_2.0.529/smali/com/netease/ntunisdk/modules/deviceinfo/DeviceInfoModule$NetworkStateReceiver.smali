.class Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field private isFirst:Z

.field final synthetic this$0:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;->this$0:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x1

    .line 366
    iput-boolean p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;->isFirst:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p2, "native"

    const-string v0, ""

    const-string v1, "UNISDK DeviceInfoModule"

    :try_start_0
    const-string v2, "NetworkStateReceiver onReceive..."

    .line 370
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-boolean v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;->isFirst:Z

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 372
    iput-boolean p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;->isFirst:Z

    return-void

    :cond_0
    const-string v2, "Network state changed..."

    .line 375
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "connectivity"

    .line 376
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    sput-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    :cond_1
    const-string v2, "wifi"

    .line 380
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_2

    .line 382
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    sput-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;->this$0:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getNetworkInfoJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v0, v3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->access$000(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;->this$0:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getWifiListJson(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v0, v3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->access$100(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :try_start_1
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;->this$0:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    const-string v2, "jni"

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getNetworkInfoJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, v0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->access$200(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    const-string p1, "libNgModules.so is not exists"

    .line 388
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getActiveNetworkInfo error, message = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
