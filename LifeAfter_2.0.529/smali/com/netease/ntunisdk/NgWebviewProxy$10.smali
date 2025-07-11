.class Lcom/netease/ntunisdk/NgWebviewProxy$10;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/NgWebviewProxy;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$10;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    iput-object p2, p0, Lcom/netease/ntunisdk/NgWebviewProxy$10;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/NgWebviewProxy$10;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$10;->val$action:Ljava/lang/String;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$10;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$800(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    .line 573
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->getCallbackInterface()Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$10;->val$action:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy$10;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
