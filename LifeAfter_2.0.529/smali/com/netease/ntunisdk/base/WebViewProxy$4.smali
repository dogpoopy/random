.class final Lcom/netease/ntunisdk/base/WebViewProxy$4;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/WebViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/WebViewProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$4;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 370
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$4;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->f(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$4;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->f(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 371
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "WEBVIEW_FULLFIT"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "WEBVIEW_CLBTN"

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$4;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->closeWebView()V

    :cond_0
    return-void
.end method
