.class Lcom/netease/ntunisdk/aidl/IPCWebViewManager$3;
.super Ljava/lang/Object;
.source "IPCWebViewManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 95
    iput-object p1, p0, Lcom/netease/ntunisdk/aidl/IPCWebViewManager$3;->this$0:Lcom/netease/ntunisdk/aidl/IPCWebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "ng_webview#ipc"

    const-string v1, "binderDied"

    .line 98
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
