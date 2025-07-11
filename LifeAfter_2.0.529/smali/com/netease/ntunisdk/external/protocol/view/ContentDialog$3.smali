.class Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;
.super Ljava/lang/Object;
.source "ContentDialog.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/view/EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public back(Ljava/lang/String;)V
    .locals 1

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$402(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    .line 182
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$400(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getViewStyle()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$502(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;I)I

    .line 183
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$400(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public finish(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$800(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$900(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Landroid/content/Context;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->dismiss()V

    .line 203
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    .line 204
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->acceptProtocol()V

    .line 205
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->exit()V

    goto :goto_0

    .line 208
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->dismiss()V

    .line 209
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->exit()V

    .line 210
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    :goto_0
    return-void
.end method

.method public next(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;I)V
    .locals 0

    .line 163
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p3, p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$1000(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;)V

    return-void
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 2

    .line 169
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.android.browser.application_id"

    .line 170
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$800(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$800(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
