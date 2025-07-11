.class Lcom/netease/ntunisdk/ui/UniWebView$3;
.super Landroid/webkit/WebChromeClient;
.source "UniWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ui/UniWebView;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ui/UniWebView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ui/UniWebView;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView$3;->this$0:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 532
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-ne p1, p2, :cond_0

    .line 533
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView$3;->this$0:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/ui/UniWebView;->access$000(Lcom/netease/ntunisdk/ui/UniWebView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 534
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView$3;->this$0:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/ui/UniWebView;->access$000(Lcom/netease/ntunisdk/ui/UniWebView;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    const-string v0, "UniSDK UniWebView"

    const-string v1, " onShowCustomView"

    .line 525
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 546
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView$3;->this$0:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ui/UniWebView;->access$902(Lcom/netease/ntunisdk/ui/UniWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 547
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView$3;->this$0:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/ui/UniWebView;->access$800(Lcom/netease/ntunisdk/ui/UniWebView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 540
    iget-object p2, p0, Lcom/netease/ntunisdk/ui/UniWebView$3;->this$0:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->access$702(Lcom/netease/ntunisdk/ui/UniWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 541
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView$3;->this$0:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/ui/UniWebView;->access$800(Lcom/netease/ntunisdk/ui/UniWebView;)V

    return-void
.end method
