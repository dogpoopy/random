.class Lcom/netease/ntunisdk/NgWebviewProxy$3;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/NgWebviewProxy;->initQstnCloseBtn()V
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

    .line 255
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$3;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 259
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "0"

    const-string v1, "WEBVIEW_FULLFIT"

    invoke-interface {p1, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v1, "WEBVIEW_CLBTN"

    invoke-interface {p1, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$3;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$800(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    return-void
.end method
