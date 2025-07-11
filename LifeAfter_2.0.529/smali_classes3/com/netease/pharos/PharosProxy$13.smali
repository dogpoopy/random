.class Lcom/netease/pharos/PharosProxy$13;
.super Ljava/lang/Object;
.source "PharosProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/PharosProxy;->startRegisterReceiver(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/PharosProxy;

.field final synthetic val$paramJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy$13;->this$0:Lcom/netease/pharos/PharosProxy;

    iput-object p2, p0, Lcom/netease/pharos/PharosProxy$13;->val$paramJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$13;->val$paramJson:Lorg/json/JSONObject;

    const-string v1, "network_aware"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 744
    :goto_0
    iget-object v1, p0, Lcom/netease/pharos/PharosProxy$13;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/PharosProxy;->setNetworkAware(Z)V

    if-eqz v0, :cond_0

    .line 746
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/network/NetworkStatus;->initialize()V

    .line 747
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$13;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-static {v0}, Lcom/netease/pharos/PharosProxy;->access$300(Lcom/netease/pharos/PharosProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/pharos/PharosProxy;->registerReceiver(Landroid/content/Context;)V

    goto :goto_1

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$13;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->unregisterReceiver()V

    :goto_1
    return-void
.end method
