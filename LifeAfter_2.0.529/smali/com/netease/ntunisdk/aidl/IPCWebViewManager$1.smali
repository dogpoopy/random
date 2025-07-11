.class Lcom/netease/ntunisdk/aidl/IPCWebViewManager$1;
.super Lcom/netease/ntunisdk/IRemoteCallback$Stub;
.source "IPCWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/aidl/IPCWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$1;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-direct {p0}, Lcom/netease/ntunisdk/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 6

    const-string v0, "0"

    const-string v1, "methodId"

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ng_webview#ipc"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    if-nez v2, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "setWebviewState"

    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WEBVIEW_FULLFIT"

    .line 43
    invoke-virtual {v2, v5, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WEBVIEW_CLBTN"

    .line 44
    invoke-virtual {v2, v5, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "ngwebview_notify_native"

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "reqData"

    .line 48
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {v2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->ntExtendFunc(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public call2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ng_webview#ipc"

    const-string v1, "call2: WebViewProxy.getInstance().getCallbackInterface().nativeCall"

    .line 65
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->getCallbackInterface()Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
