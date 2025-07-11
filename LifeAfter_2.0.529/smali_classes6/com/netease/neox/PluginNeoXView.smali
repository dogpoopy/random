.class public Lcom/netease/neox/PluginNeoXView;
.super Ljava/lang/Object;
.source "PluginNeoXView.java"

# interfaces
.implements Lcom/netease/neox/IPlugin;


# instance fields
.field private m_view:Lcom/netease/neox/NeoXView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/neox/PluginNeoXView;)Lcom/netease/neox/NeoXView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NeoXView"

    return-object v0
.end method

.method public getView()Lcom/netease/neox/NeoXView;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

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

    .line 26
    new-instance p2, Lcom/netease/neox/NeoXView;

    invoke-direct {p2, p1}, Lcom/netease/neox/NeoXView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    .line 27
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/netease/neox/PluginNeoXView$1;

    invoke-direct {p2, p0}, Lcom/netease/neox/PluginNeoXView$1;-><init>(Lcom/netease/neox/PluginNeoXView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

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

    .line 54
    iget-object p1, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    if-eqz p1, :cond_0

    const/16 v0, 0x7d0

    .line 55
    invoke-virtual {p1, v0}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

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

    if-eqz p2, :cond_0

    .line 74
    iget-object p1, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    if-eqz p1, :cond_0

    const/16 p2, 0x7d0

    .line 75
    invoke-virtual {p1, p2}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

    :cond_0
    return-void
.end method
