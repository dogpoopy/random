.class Lcom/netease/mrzhna/NeoXWebView$NeoXWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "NeoXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/NeoXWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NeoXWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/NeoXWebView;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/NeoXWebView;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/netease/mrzhna/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/mrzhna/NeoXWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 179
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/netease/mrzhna/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/mrzhna/NeoXWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mrzhna/NeoXWebView;->setTitle(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/netease/mrzhna/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/mrzhna/NeoXWebView;

    invoke-static {p1}, Lcom/netease/mrzhna/NeoXWebView;->access$000(Lcom/netease/mrzhna/NeoXWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/netease/mrzhna/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/mrzhna/NeoXWebView;

    invoke-static {p1}, Lcom/netease/mrzhna/NeoXWebView;->access$100(Lcom/netease/mrzhna/NeoXWebView;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 184
    iget-object p1, p0, Lcom/netease/mrzhna/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/mrzhna/NeoXWebView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netease/mrzhna/NeoXWebView;->access$002(Lcom/netease/mrzhna/NeoXWebView;Z)Z

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    const-string p1, "NeoXWebView"

    const-string p3, "onReceivedSslError"

    .line 190
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
