.class public Lcom/netease/neox/PluginCCLive;
.super Ljava/lang/Object;
.source "PluginCCLive.java"

# interfaces
.implements Lcom/netease/neox/IPlugin;


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_players:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/neox/CCPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/netease/neox/PluginCCLive;->m_context:Landroid/app/Activity;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/PluginCCLive;->m_players:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public controlMsg(Ljava/lang/String;I)I
    .locals 1

    .line 104
    invoke-static {}, Lcom/CCMsgSdk/CCMsgSdk;->shareInstance()Lcom/CCMsgSdk/CCMsgSdk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/CCMsgSdk/CCMsgSdk;->control(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public createCCPlayer()Lcom/netease/neox/CCPlayer;
    .locals 2

    .line 91
    new-instance v0, Lcom/netease/neox/CCPlayer;

    iget-object v1, p0, Lcom/netease/neox/PluginCCLive;->m_context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/neox/CCPlayer;-><init>(Landroid/app/Activity;)V

    .line 92
    iget-object v1, p0, Lcom/netease/neox/PluginCCLive;->m_players:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public destroyCCPlayer(Lcom/netease/neox/CCPlayer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/netease/neox/CCPlayer;->destroy()V

    .line 99
    iget-object v0, p0, Lcom/netease/neox/PluginCCLive;->m_players:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public fetchMsg()[Ljava/lang/String;
    .locals 2

    .line 108
    invoke-static {}, Lcom/CCMsgSdk/CCMsgSdk;->shareInstance()Lcom/CCMsgSdk/CCMsgSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/CCMsgSdk/CCMsgSdk;->fetchMessage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "cclive"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/netease/neox/PluginCCLive;->m_context:Landroid/app/Activity;

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/netease/neox/PluginCCLive;->m_players:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/neox/CCPlayer;

    .line 33
    invoke-virtual {v0}, Lcom/netease/neox/CCPlayer;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/netease/neox/PluginCCLive;->m_players:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/neox/CCPlayer;

    .line 45
    invoke-virtual {v0}, Lcom/netease/neox/CCPlayer;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    return-void
.end method

.method public supportHardwareDecoder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
