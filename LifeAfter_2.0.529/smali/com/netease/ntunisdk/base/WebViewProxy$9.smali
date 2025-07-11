.class final Lcom/netease/ntunisdk/base/WebViewProxy$9;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/WebViewProxy;->disposeWebView()V
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

    .line 767
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$9;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 771
    const-class v0, Lcom/netease/ntunisdk/base/WebViewProxy;

    monitor-enter v0

    .line 772
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$9;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->j(Lcom/netease/ntunisdk/base/WebViewProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$9;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 774
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$9;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->f(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 775
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$9;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->h(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;

    .line 776
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$9;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->g(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;

    .line 778
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
