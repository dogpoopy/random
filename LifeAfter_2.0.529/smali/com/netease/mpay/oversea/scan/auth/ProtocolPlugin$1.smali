.class Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;
.super Ljava/lang/Object;
.source "ProtocolPlugin.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->showProtocol(Landroid/app/Activity;Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;

.field final synthetic val$callback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

.field final synthetic val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->val$callback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Protocol: onFinish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProtocolPlugin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->removeCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->access$002(Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;Z)Z

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 64
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->val$callback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    sget v0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_SUCCESS:I

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;

    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->access$100(Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->data:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    goto :goto_1

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->val$callback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    sget v0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_FAILED:I

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    :goto_1
    return-void
.end method

.method public onOpen()V
    .locals 2

    const-string v0, "ProtocolPlugin"

    const-string v1, "Protocol: onOpen=>onClose"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
