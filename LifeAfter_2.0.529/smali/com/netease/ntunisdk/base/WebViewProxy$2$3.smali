.class final Lcom/netease/ntunisdk/base/WebViewProxy$2$3;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/WebViewProxy$2;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/WebViewProxy$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy$2;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$3;->a:Lcom/netease/ntunisdk/base/WebViewProxy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 324
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$3;->a:Lcom/netease/ntunisdk/base/WebViewProxy$2;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->d(Lcom/netease/ntunisdk/base/WebViewProxy;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    .line 326
    iput v1, v0, Landroid/os/Message;->what:I

    .line 327
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$3;->a:Lcom/netease/ntunisdk/base/WebViewProxy$2;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/WebViewProxy;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
