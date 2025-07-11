.class Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;
.super Ljava/lang/Object;
.source "IPCWebViewManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 70
    iput-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ng_webview#ipc"

    const-string v0, "onServiceConnected"

    .line 73
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-static {p2}, Lcom/netease/ntunisdk/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/netease/ntunisdk/IRemoteService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->access$002(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;Lcom/netease/ntunisdk/IRemoteService;)Lcom/netease/ntunisdk/IRemoteService;

    .line 77
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->access$000(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/IRemoteService;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/IRemoteService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-static {p2}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->access$100(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 78
    iget-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->access$000(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/IRemoteService;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    iget-object p2, p2, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->iRemoteCallback:Lcom/netease/ntunisdk/IRemoteCallback$Stub;

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/IRemoteService;->register(Lcom/netease/ntunisdk/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "ng_webview#ipc"

    const-string v0, "onServiceDisconnected"

    .line 86
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->access$000(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/IRemoteService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->access$000(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/IRemoteService;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/IRemoteService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->access$100(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->access$002(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;Lcom/netease/ntunisdk/IRemoteService;)Lcom/netease/ntunisdk/IRemoteService;

    .line 91
    iget-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    iput-object v0, p1, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->iRemoteCallback:Lcom/netease/ntunisdk/IRemoteCallback$Stub;

    return-void
.end method
