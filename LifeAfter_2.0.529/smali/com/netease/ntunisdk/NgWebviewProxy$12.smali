.class Lcom/netease/ntunisdk/NgWebviewProxy$12;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/NgWebviewProxy;->onJsCallback(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$respJSONString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$12;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    iput-object p2, p0, Lcom/netease/ntunisdk/NgWebviewProxy$12;->val$identifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/NgWebviewProxy$12;->val$respJSONString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$12;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$000(Lcom/netease/ntunisdk/NgWebviewProxy;)Lcom/netease/ntunisdk/ui/UniWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy$12;->val$identifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy$12;->val$respJSONString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "window.UniSDKNativeCallback"

    invoke-virtual {v0, v2, v1}, Lcom/netease/ntunisdk/ui/UniWebView;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
