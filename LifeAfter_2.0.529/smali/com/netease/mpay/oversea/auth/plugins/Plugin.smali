.class public interface abstract Lcom/netease/mpay/oversea/auth/plugins/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# virtual methods
.method public abstract addCallback(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;
.end method

.method public abstract addOnNextListener(Lcom/netease/mpay/oversea/auth/plugins/OnNextListener;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;
.end method

.method public abstract addPreTaskResult(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V
.end method

.method public abstract execute()V
.end method

.method public abstract getCallback()Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isEndNode()Z
.end method

.method public abstract isNeedSuccessBeforeExecute()Z
.end method
