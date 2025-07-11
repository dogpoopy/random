.class Lcom/netease/mrzhna/Channel$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnFinishInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Channel;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Channel;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Channel;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishInit(I)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    const-string v1, "baidu"

    invoke-static {v0, v1}, Lcom/netease/mrzhna/Channel;->access$000(Lcom/netease/mrzhna/Channel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-static {v0}, Lcom/netease/mrzhna/Channel;->access$100(Lcom/netease/mrzhna/Channel;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/StartupActivity;->popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;)V

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnInitSdk(I)V

    .line 114
    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lcom/netease/mrzhna/Channel;->access$202(Lcom/netease/mrzhna/Channel;Z)Z

    .line 115
    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-static {v0, v1}, Lcom/netease/mrzhna/Channel;->access$302(Lcom/netease/mrzhna/Channel;Z)Z

    if-nez p1, :cond_2

    .line 118
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    .line 119
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V

    .line 120
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    .line 121
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setContinueListener(Lcom/netease/ntunisdk/base/OnContinueListener;I)V

    .line 122
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V

    .line 123
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;I)V

    .line 124
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V

    .line 125
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V

    .line 126
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setQRCodeListener(Lcom/netease/ntunisdk/base/OnQRCodeListener;I)V

    .line 127
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V

    .line 128
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setQuerySkuDetailsListener(Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;I)V

    .line 130
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetFloatBtnVisible(Z)V

    .line 133
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-interface {p1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setQueryFriendListener(Lcom/netease/ntunisdk/base/QueryFriendListener;I)V

    goto :goto_1

    .line 138
    :cond_2
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnExitApp()V

    .line 139
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 140
    iget-object p1, p0, Lcom/netease/mrzhna/Channel$1;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-static {p1}, Lcom/netease/mrzhna/Channel;->access$100(Lcom/netease/mrzhna/Channel;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/NativeActivity;

    .line 141
    invoke-virtual {p1}, Landroid/app/NativeActivity;->finish()V

    :goto_1
    return-void
.end method
