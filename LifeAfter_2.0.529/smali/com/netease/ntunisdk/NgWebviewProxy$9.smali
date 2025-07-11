.class Lcom/netease/ntunisdk/NgWebviewProxy$9;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/NgWebviewProxy;->closeWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/NgWebviewProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$9;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 481
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 482
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$9;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$000(Lcom/netease/ntunisdk/NgWebviewProxy;)Lcom/netease/ntunisdk/ui/UniWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$9;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$000(Lcom/netease/ntunisdk/NgWebviewProxy;)Lcom/netease/ntunisdk/ui/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->destroy()V

    .line 484
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$9;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$002(Lcom/netease/ntunisdk/NgWebviewProxy;Lcom/netease/ntunisdk/ui/UniWebView;)Lcom/netease/ntunisdk/ui/UniWebView;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$9;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$700(Lcom/netease/ntunisdk/NgWebviewProxy;)Lcom/netease/ntunisdk/WebviewParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$9;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$702(Lcom/netease/ntunisdk/NgWebviewProxy;Lcom/netease/ntunisdk/WebviewParams;)Lcom/netease/ntunisdk/WebviewParams;

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$9;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$600(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$9;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$600(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 491
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$9;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$602(Lcom/netease/ntunisdk/NgWebviewProxy;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_2
    return-void
.end method
