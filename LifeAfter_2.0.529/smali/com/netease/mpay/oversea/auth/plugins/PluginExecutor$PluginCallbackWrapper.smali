.class public Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;
.super Ljava/lang/Object;
.source "PluginExecutor.java"

# interfaces
.implements Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;->mCallback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginCallbackWrapper.onFinish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->data:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;->mCallback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    :cond_0
    return-void
.end method
