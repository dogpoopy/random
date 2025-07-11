.class Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$1;
.super Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;
.source "PluginExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->execute(Lcom/netease/mpay/oversea/auth/plugins/Plugin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$1;->this$0:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;-><init>(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$1;->this$0:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->access$002(Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    .line 58
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    .line 59
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$1;->this$0:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->scheduleNext(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    return-void
.end method
