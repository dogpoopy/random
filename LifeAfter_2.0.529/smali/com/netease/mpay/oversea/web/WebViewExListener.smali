.class public interface abstract Lcom/netease/mpay/oversea/web/WebViewExListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mpay/oversea/web/InjectedJsInterface;


# virtual methods
.method public abstract onPNLogin(Ljava/lang/String;)V
.end method

.method public abstract onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onVerify(Ljava/lang/String;)V
.end method

.method public abstract openLinkInNativeBrowser(Ljava/lang/String;)V
.end method

.method public abstract postMsgToNative(Ljava/lang/String;)V
.end method

.method public abstract shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end method
