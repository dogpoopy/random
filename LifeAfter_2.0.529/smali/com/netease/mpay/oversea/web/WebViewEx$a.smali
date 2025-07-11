.class Lcom/netease/mpay/oversea/web/WebViewEx$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mpay/oversea/web/InjectedJsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/web/WebViewEx;->registered(Landroid/app/Activity;Landroid/content/res/AssetManager;Lcom/netease/mpay/oversea/web/Config;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/web/WebViewExListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/web/WebViewExListener;

.field final synthetic b:Lcom/netease/mpay/oversea/web/WebViewEx;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/web/WebViewEx;Lcom/netease/mpay/oversea/web/WebViewExListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    iput-object p2, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->alert(Ljava/lang/String;)V

    return-void
.end method

.method public closeWindow()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->closeWindow()V

    return-void
.end method

.method public getSDKToken()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->getSDKToken()V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onPNLogin(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/WebViewExListener;->onPNLogin(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->onProgress(I)V

    return-void
.end method

.method public onReady()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->onReady()V

    return-void
.end method

.method public onSetSpwd(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->onSetSpwd(Ljava/lang/String;)V

    return-void
.end method

.method public onUserLogin(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->onUserLogin(Ljava/lang/String;)V

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/WebViewExListener;->onVerify(Ljava/lang/String;)V

    return-void
.end method

.method public openLinkInNativeBrowser(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/WebViewExListener;->openLinkInNativeBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/WebViewExListener;->postMsgToNative(Ljava/lang/String;)V

    return-void
.end method

.method public saveMigrateCode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->saveMigrateCode(Ljava/lang/String;)V

    return-void
.end method

.method public saveToClipboard(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->saveToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method public screenShot()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->screenShot()V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$a;->a:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/web/InjectedJsInterface;->toast(Ljava/lang/String;)V

    return-void
.end method
