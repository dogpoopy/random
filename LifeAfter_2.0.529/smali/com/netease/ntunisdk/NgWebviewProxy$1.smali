.class Lcom/netease/ntunisdk/NgWebviewProxy$1;
.super Landroid/os/Handler;
.source "NgWebviewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/NgWebviewProxy;
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

    .line 97
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$1;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 108
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$1;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$000(Lcom/netease/ntunisdk/NgWebviewProxy;)Lcom/netease/ntunisdk/ui/UniWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$1;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$100(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$1;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$200(Lcom/netease/ntunisdk/NgWebviewProxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$1;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$300(Lcom/netease/ntunisdk/NgWebviewProxy;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$1;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$400(Lcom/netease/ntunisdk/NgWebviewProxy;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 109
    invoke-static {}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebViewProxy [Handler] [MSG_PAGE_TIMEOUT] timeout, show close button"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$1;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$100(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
