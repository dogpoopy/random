.class Lcom/netease/ntunisdk/extend/NetworkCardManager$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/extend/NetworkCardManager;->directBindWifiNetworkCard(ILcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

.field final synthetic val$connectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic val$fd:I

.field final synthetic val$json:Lorg/json/JSONObject;

.field final synthetic val$sdk:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/extend/NetworkCardManager;ILcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    iput p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$fd:I

    iput-object p3, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$sdk:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p4, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$json:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 420
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string v0, "NetworkCardManager"

    const-string v1, "direct WifiNetwork: onAvailable"

    .line 421
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    iget v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$fd:I

    iget-object v2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$sdk:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v3, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$json:Lorg/json/JSONObject;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->access$300(Lcom/netease/ntunisdk/extend/NetworkCardManager;ILandroid/net/Network;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    .line 423
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 3

    .line 428
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    const-string p2, "NetworkCardManager"

    const-string v0, "direct WifiNetwork: onLosing"

    .line 429
    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    iget v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$fd:I

    iget-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$sdk:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$json:Lorg/json/JSONObject;

    invoke-static {p2, v0, p1, v1, v2}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->access$300(Lcom/netease/ntunisdk/extend/NetworkCardManager;ILandroid/net/Network;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    .line 431
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .line 436
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string v0, "NetworkCardManager"

    const-string v1, "direct WifiNetwork: onLost"

    .line 437
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    iget v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$fd:I

    iget-object v2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$sdk:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v3, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$json:Lorg/json/JSONObject;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->access$300(Lcom/netease/ntunisdk/extend/NetworkCardManager;ILandroid/net/Network;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    .line 439
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
