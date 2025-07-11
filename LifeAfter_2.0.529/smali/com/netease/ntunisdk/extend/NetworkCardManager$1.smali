.class Lcom/netease/ntunisdk/extend/NetworkCardManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/extend/NetworkCardManager;->startNetworkCardStateListener(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

.field final synthetic val$sdkBase:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/extend/NetworkCardManager;Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->val$sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 164
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 165
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->access$002(Lcom/netease/ntunisdk/extend/NetworkCardManager;Landroid/net/Network;)Landroid/net/Network;

    const-string p1, "NetworkCardManager"

    const-string v0, "MobileNetwork: onAvailable"

    .line 166
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->val$sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->access$100(Lcom/netease/ntunisdk/extend/NetworkCardManager;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1

    .line 172
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    .line 173
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->access$002(Lcom/netease/ntunisdk/extend/NetworkCardManager;Landroid/net/Network;)Landroid/net/Network;

    const-string p1, "NetworkCardManager"

    const-string v0, "MobileNetwork: onLosing"

    .line 174
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->val$sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1, v0, p2}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->access$100(Lcom/netease/ntunisdk/extend/NetworkCardManager;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 181
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->access$002(Lcom/netease/ntunisdk/extend/NetworkCardManager;Landroid/net/Network;)Landroid/net/Network;

    const-string p1, "NetworkCardManager"

    const-string v1, "MobileNetwork: onLost"

    .line 182
    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->this$0:Lcom/netease/ntunisdk/extend/NetworkCardManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;->val$sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1, v1, v0}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->access$100(Lcom/netease/ntunisdk/extend/NetworkCardManager;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    return-void
.end method
