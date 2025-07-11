.class public Lcom/netease/ntunisdk/aidl/IPCWebViewManager;
.super Ljava/lang/Object;
.source "IPCWebViewManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ng_webview#ipc"


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field iRemoteCallback:Lcom/netease/ntunisdk/IRemoteCallback$Stub;

.field private iRemoteService:Lcom/netease/ntunisdk/IRemoteService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$1;-><init>(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->iRemoteCallback:Lcom/netease/ntunisdk/IRemoteCallback$Stub;

    .line 70
    new-instance v0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$2;-><init>(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->connection:Landroid/content/ServiceConnection;

    .line 95
    new-instance v0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$3;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$3;-><init>(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/IRemoteService;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->iRemoteService:Lcom/netease/ntunisdk/IRemoteService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;Lcom/netease/ntunisdk/IRemoteService;)Lcom/netease/ntunisdk/IRemoteService;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->iRemoteService:Lcom/netease/ntunisdk/IRemoteService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/aidl/IPCWebViewManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .locals 3

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/ntunisdk/aidl/NGRemoteService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    iget-object v1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->iRemoteService:Lcom/netease/ntunisdk/IRemoteService;

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/IRemoteService;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->iRemoteService:Lcom/netease/ntunisdk/IRemoteService;

    .line 110
    iput-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager;->iRemoteCallback:Lcom/netease/ntunisdk/IRemoteCallback$Stub;

    return-void
.end method
