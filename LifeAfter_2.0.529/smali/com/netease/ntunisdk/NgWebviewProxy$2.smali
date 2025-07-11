.class Lcom/netease/ntunisdk/NgWebviewProxy$2;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/NgWebviewProxy;->init()V
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

    .line 154
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$2;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 158
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$2;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$602(Lcom/netease/ntunisdk/NgWebviewProxy;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 159
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$2;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$002(Lcom/netease/ntunisdk/NgWebviewProxy;Lcom/netease/ntunisdk/ui/UniWebView;)Lcom/netease/ntunisdk/ui/UniWebView;

    .line 160
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$2;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$702(Lcom/netease/ntunisdk/NgWebviewProxy;Lcom/netease/ntunisdk/WebviewParams;)Lcom/netease/ntunisdk/WebviewParams;

    .line 163
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dialog onCancel"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "methodId"

    const-string v1, "NtCloseWebView"

    .line 165
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "result"

    const-string v1, "0"

    .line 166
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    invoke-static {}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog onCancel Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
